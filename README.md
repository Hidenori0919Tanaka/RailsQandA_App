# RailsQandP_App

# テーブル設計
|    User    |  Question  |   Answer   |
|:-----------|-----------:|:----------:|
| Id         | Id         | Id         |
| Name       | Title      | Title      |
| Mail       | Text       | Text       |
| Image      | SolvedFlaf | UserId     |
| AdminFlag  | UserId     | QuestionId |
| CreateDate | CreateDate | CreateDate |
| UpdateDate | UpdateDate | UpdateDate |


# エンドポイント・コントローラ設計
|    User                                |  HTTPメソッド  |          エンドポイント   |  コントローラーアクション      |
|:---------------------------------------|--------------:|:----------------------:|:---------------------------:|
| ユーザー登録画面を表示する                 | GET            | /users/new            | users#new	                |
| ユーザー登録をする                       | post            | /users/create         | users#new                |
|  ログイン画面を表示する                    | get            | /login                | sessions#new                |
| ログインする                            | post            | /login                | sessions#create                |
| 質問一覧を表示する（全て）                | get             | /questions            | questions#index                |
| 質問一覧を表示する（未解決）              | get             | /questions/unresolved | questions#unresolved                |
| 質問一覧を表示する（解決済み）            | get             | /questions/resolved   |  questions#solved               |
| 質問投稿ページを表示する                 | get             | /questions/new |      | questions#new
| 質問投稿をする			  | post            | /questions/create     |  questions#create               |
| 質問詳細を表示する	                 | get              | /questions/:id        |  questions#show               |
| 質問編集ページを表示する		| get              | /questions/:id/edit   |  questions#edit               |
| 質問を削除する                        | delete           | /questions/:id        |  questions#destroy               |
| 回答する                             | post             | /question/:id/answer  |  answers#create               |
| ユーザー一覧を表示する                 | get              | /users |              |  users#index
| 管理画面用のログインページを表示する     | get               | /admin/login |        | admin/sessions#new
| （管理画面）質問一覧ページを表示する     | get               | /admin/questions/:id  | admin/questions#index                |
| （管理画面）質問を削除する		 | delete             | /admin/questions/:id | admin/questions#destroy                |
| （管理画面）ユーザー一覧ページを表示する  |get                | /admin/users         |  admin/users#index               |
| (管理画面）ユーザーを削除する          | delete             | /admin/users/:id     |  admin/users#destroy               |

		

			
			
			
			


	
（			

