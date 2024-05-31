<template>
  <div>
    <h1 v-if="tab == 'h1'" class="scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl">{{ malgio }}</h1>
    <code v-if="tab == 'monospace'"
      class="relative rounded bg-muted px-[0.3rem] py-[0.2rem] font-mono text-sm font-semibold">
    {{ malgio }}
  </code>
    <Input type="text" v-model="malgio" />

    <Button>Ciao</Button>

    <div class="grid grid-cols-4 gap-4">
      <div v-for="n in [1,2,3]" class="bg-sky-400 p-10 shadow-md rounded-md text-center">{{ n }}</div>
    </div>

    <Tabs default-value="account" v-model="tab" class="w-[400px]">
      <TabsList>
        <TabsTrigger value="monospace">
          monospace
        </TabsTrigger>
        <TabsTrigger value="h1">
          h1
        </TabsTrigger>
      </TabsList>
      <TabsContent value="account">
        Make changes to your account here.
      </TabsContent>
      <TabsContent value="password">
        Change your password here.
      </TabsContent>
    </Tabs>
  </div>
</template>

<script setup lang="ts">

import { ref } from 'vue';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Input } from '@/components/ui/input'
import { Button } from '@/components/ui/button'

const malgio = ref("")
const tab = ref("")

function analSex() {
  alert("malgio")
}

</script>