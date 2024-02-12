defmodule MediaServerWeb.Components.FooterComponent do
  use Phoenix.Component

  def render(assigns) do
    ~H"""
    <footer class="mx-auto w-full max-w-2xl space-y-10 pb-24 lg:pb-16 lg:max-w-5xl">
      <div class="flex flex-col items-center justify-between gap-5 border-t border-zinc-900/5 pt-8 dark:border-white/5 sm:flex-row">
        <div class="flex text-xs text-zinc-600 dark:text-zinc-400">
          <p>Copyright © 2024 Midarr Labs</p>
          <p class="ml-4 pl-4 border-l border-white/10">
            v5.0.0-beta.3
          </p>
        </div>
        <div class="flex gap-4">
          <.link target="_blank" href="https://github.com/midarrlabs" class="group">
            <svg
              viewBox="0 0 20 20"
              class="h-5 w-5 fill-zinc-700 transition group-hover:fill-zinc-900 dark:group-hover:fill-zinc-500"
            >
              <path
                fill-rule="evenodd"
                clip-rule="evenodd"
                d="M10 1.667c-4.605 0-8.334 3.823-8.334 8.544 0 3.78 2.385 6.974 5.698 8.106.417.075.573-.182.573-.406 0-.203-.011-.875-.011-1.592-2.093.397-2.635-.522-2.802-1.002-.094-.246-.5-1.005-.854-1.207-.291-.16-.708-.556-.01-.567.656-.01 1.124.62 1.281.876.75 1.292 1.948.93 2.427.705.073-.555.291-.93.531-1.143-1.854-.213-3.791-.95-3.791-4.218 0-.929.322-1.698.854-2.296-.083-.214-.375-1.09.083-2.265 0 0 .698-.224 2.292.876a7.576 7.576 0 0 1 2.083-.288c.709 0 1.417.096 2.084.288 1.593-1.11 2.291-.875 2.291-.875.459 1.174.167 2.05.084 2.263.53.599.854 1.357.854 2.297 0 3.278-1.948 4.005-3.802 4.219.302.266.563.78.563 1.58 0 1.143-.011 2.061-.011 2.35 0 .224.156.491.573.405a8.365 8.365 0 0 0 4.11-3.116 8.707 8.707 0 0 0 1.567-4.99c0-4.721-3.73-8.545-8.334-8.545Z"
              >
              </path>
            </svg>
          </.link>
        </div>
      </div>
    </footer>
    """
  end
end
