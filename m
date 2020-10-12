Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B75E928BB68
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 16:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389069AbgJLOxN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 10:53:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387930AbgJLOxN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Oct 2020 10:53:13 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B2BCC0613D0
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 07:53:13 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id c22so23632217ejx.0
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 07:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=han/y2ObDrzU2Lpo5dfsQQuUnJc22R+SVZVH0ama1LA=;
        b=ckuY1EM3qdBtaRKpMwYzHlt+WxEztI2VtQk77OwdIlLvq7sXhvdHFoxvCOfd1ucivR
         iY2t4tGcjK2+1eSXNTHL8fBgDSE1tQYu9cHSTqAPjQmtuNXXn16cOwmw1uHIo49cxeSE
         6HFZJEe+wA40V62J6qG/44/2Vt7Dtt4K1LHaQe35lxzqqauRJFoegn9HRK/tU61tOu6j
         iP90XPesD6khF0CvbR/iP9QVwwymLVbhUznHnYgsvTX2oUn28AkoB6u0Iu1hmf5gQSNr
         6tFB4xy15BN5AnMkqvQbAtJpuGVHOKuRiA3tL7em2O9/J23chJxL/bszoY35yx+rNziI
         4MWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=han/y2ObDrzU2Lpo5dfsQQuUnJc22R+SVZVH0ama1LA=;
        b=RJH9CJcn75CYOg169evjYOrviDG7kBtF1yCPVhbsnTizw9d+CsnN3HSWVD8vbNSt9Q
         YmhaIq9zNVb1oWUVxiN70SVSZikoiKhqtCyb4I5o1IkNuWnPHd2GC2jIKM3/073bscuq
         meLOKbzyoxI+PnXSKUmKfJbPeTfZ+XKQqBVfec3cep3Q7YDNF2VeSkZqRfRuPJUbzj2Y
         vEs2SD9uPRkLGtMcOat9wQYWzQM4GUdIP8EcS484/KZa5hDtqBnrhCoshSjC5wOyd7vl
         Litx1IoIThvwGzpXx3zv8ubmHBGZWkvFwLm87QfWIR2kF5JXT6A6N9JudbVaqXh7TFPA
         UV2A==
X-Gm-Message-State: AOAM533Efq8P68zf5ez0U53EqB5VDTCUuMXmzQ9XLG8j4KM+SNNJ8DYh
        8EhSr00gDqc+Me1fZeVDNgEWANwTNM8rvhktQ446Zg==
X-Google-Smtp-Source: ABdhPJwjXVHDIhhac+d1A+3GEjWkFivZDxEV6CgWjvNihJmLoJ8H0vky1VcauI2m5vli/zH3j4rMnpv+M1t03d09H+s=
X-Received: by 2002:a17:906:c0d1:: with SMTP id bn17mr17139876ejb.114.1602514391843;
 Mon, 12 Oct 2020 07:53:11 -0700 (PDT)
MIME-Version: 1.0
References: <20201012114940.1317510-1-jannh@google.com>
In-Reply-To: <20201012114940.1317510-1-jannh@google.com>
From:   Jann Horn <jannh@google.com>
Date:   Mon, 12 Oct 2020 16:52:45 +0200
Message-ID: <CAG48ez17=x9eHLGR-Uyx3xsVJv3W=4WsTs3HG5Fam5UP=CWXbQ@mail.gmail.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 12, 2020 at 1:49 PM Jann Horn <jannh@google.com> wrote:
> Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
> v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
> the per-mm counters. With a 4K page size, that means that you can end up
> with the counters off by up to 252KiB per thread.

Actually, as Mark Mossberg pointed out to me off-thread, the counters
can actually be off by many times more... can be reproduced with e.g.
the following:

#include <stdlib.h>
#include <err.h>
#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/eventfd.h>
#include <sys/prctl.h>
void dump(int pid) {
  char cmd[1000];
  sprintf(cmd,
    "grep '^VmRSS' /proc/%d/status;"
    "grep '^Rss:' /proc/%d/smaps_rollup;"
    "echo",
    pid, pid
  );
  system(cmd);
}
int main(void) {
  eventfd_t dummy;
  int child_wait = eventfd(0, EFD_SEMAPHORE|EFD_CLOEXEC);
  int child_resume = eventfd(0, EFD_SEMAPHORE|EFD_CLOEXEC);
  if (child_wait == -1 || child_resume == -1) err(1, "eventfd");
  pid_t child = fork();
  if (child == -1) err(1, "fork");
  if (child == 0) {
    if (prctl(PR_SET_PDEATHSIG, SIGKILL)) err(1, "PDEATHSIG");
    if (getppid() == 1) exit(0);
    char *mapping = mmap(NULL, 80 * 0x1000, PROT_READ|PROT_WRITE,
                         MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    for (int i=0; 1; i++) {
      eventfd_write(child_wait, 1);
      eventfd_read(child_resume, &dummy);
      if (i == 80) break;
      mapping[0x1000 * i] = 1;
    }
    exit(0);
  }

  for (int i=0; i<81; i++) {
    eventfd_read(child_wait, &dummy);
    dump(child);
    eventfd_write(child_resume, 1);
  }

  exit(0);
}


I'm not entirely sure why though.
