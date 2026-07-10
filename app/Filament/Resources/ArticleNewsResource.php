<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ArticleNewsResource\Pages;
use App\Filament\Resources\ArticleNewsResource\RelationManagers;
use App\Models\ArticleNews;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ArticleNewsResource extends Resource
{
    protected static ?string $model = ArticleNews::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255),

                Forms\Components\TextInput::make('slug')
                    ->disabled(),

                Forms\Components\FileUpload::make('thumbnail')
                    ->image()
                    ->required(),                

                Forms\Components\Select::make('category_id')
                    ->relationship('category', 'name')
                    ->searchable()
                    ->preload()
                    ->required(),

                Forms\Components\Select::make('author_id')
                    ->relationship('author', 'name')
                    ->searchable()
                    ->preload()
                    ->required(),

                Forms\Components\Select::make('is_featured')
                    ->options([
                        'featured' => 'Featured',
                        'not_featured' => 'Not Featured',
                    ])
                    ->required(),
                Forms\Components\RichEditor::make('content')
                ->columnSpanFull()
                    ->required()
                    ->toolbarButtons([
                        'attachFiles',
                        'bold',
                        'italic',
                        'h2',
                        'h3',
                        'underline',
                        'strike',
                        'bulletList',
                        'orderedList',
                        'link',
                        'redo',
                        'undo',
                        'codeBlock',
                        'blockquote',
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
                tables\Columns\TextColumn::make('name')->limit(30)->tooltip(fn ($state) => $state)->searchable(),
                // tables\Columns\TextColumn::make('slug')->searchable(),
                tables\Columns\ImageColumn::make('thumbnail'),
                tables\Columns\TextColumn::make('content')->limit(50)->searchable(),
                tables\Columns\TextColumn::make('category.name')->label('Category')->searchable(),
                tables\Columns\TextColumn::make('author.name')->label('Author')->searchable(),
                tables\Columns\TextColumn::make('is_featured')->sortable()->searchable()
                ->badge()->color(fn (string $state): string => match ($state) {
                    'featured' => 'success',
                    'not_featured' => 'danger',                    
                }),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListArticleNews::route('/'),
            'create' => Pages\CreateArticleNews::route('/create'),
            'edit' => Pages\EditArticleNews::route('/{record}/edit'),
        ];
    }
}
