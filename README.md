# RailsQandA_App

# テーブル設計
|    users    |  questions  |   answers   |
|:-----------|-----------:|:----------:|
| id         | id         |
| name       | title      | title      |
| mail       | text       | text       |
| image      | solved_flag | user_id     |
| admin_flag  | user_id     | question_id |
| created_at | created_at | created_at |
| updated_at | updated_at | updated_at |


# エンドポイント・コントローラ設計
|    User                                |  HTTPメソッド  |          エンドポイント   |  コントローラーアクション      |
|:---------------------------------------|--------------:|:----------------------:|:---------------------------:|
| ユーザー登録画面を表示する                 | GET            | /users/new            | users#new	                |
| ユーザー登録をする                       | post            | /users         | users#create                |
|  ログイン画面を表示する                    | get            | /login                | sessions#new                |
| ログインする                            | post            | /login                | sessions#create                |
| 質問一覧を表示する（全て）                | get             | /questions            | questions#index                |
| 質問一覧を表示する（未解決）              | get             | /questions/unsolved | questions#unsolved                |
| 質問一覧を表示する（解決済み）            | get             | /questions/solved   |  questions#solved               |
| 質問投稿ページを表示する                 | get             | /questions/new       | questions#new                  |
| 質問投稿をする			  | post            | /questions     |  questions#create               |
| 質問詳細を表示する	                 | get              | /questions/:id        |  questions#show               |
| 質問編集ページを表示する		| get              | /questions/:id/edit   |  questions#edit               |
| 質問を削除する                        | delete           | /questions/:id        |  questions#destroy               |
| 回答する                             | post             | /question/:id/answer  |  answers#create               |
| ユーザー一覧を表示する                 | get              | /users               |  users#index                    |
| 管理画面用のログインページを表示する     | get               | /admin/login         | admin/sessions#new                |
| （管理画面）質問一覧ページを表示する     | get               | /admin/questions  | admin/questions#index                |
| （管理画面）質問を削除する		 | delete             | /admin/questions/:id | admin/questions#destroy                |
| （管理画面）ユーザー一覧ページを表示する  |get                | /admin/users         |  admin/users#index               |
| (管理画面）ユーザーを削除する          | delete             | /admin/users/:id     |  admin/users#destroy               |

		

			
			
			
			


	
		

