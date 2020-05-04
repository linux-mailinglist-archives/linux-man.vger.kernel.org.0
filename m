Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A87F1C37D7
	for <lists+linux-man@lfdr.de>; Mon,  4 May 2020 13:18:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728029AbgEDLSN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 May 2020 07:18:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726445AbgEDLSM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 May 2020 07:18:12 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64706C061A0E
        for <linux-man@vger.kernel.org>; Mon,  4 May 2020 04:18:12 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id t11so9350839lfe.4
        for <linux-man@vger.kernel.org>; Mon, 04 May 2020 04:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=nPLqeL1FvTuzrY/ClRhootRHt5J41w78xjlPy17QiOY=;
        b=qVTROK95Wn/AOtDd7ys4isYZekyadaBMfEhGwih8DDl1z/FOoIXdNuwiqZbjQUMstc
         xh07QygH7IXA4WRxnbQDxfM1BA3P4v7O+gyRDCV5oSgTT5vx9Q4fEbxoyHmb5cBFTm4Y
         w4VcPq08lX8m7vN896DSqxlg69RLtDdUE3zgqs91x/ctWsALWfLGyQxwtC5j9HlAIArN
         foItIgvOun2jEDBgR2X6W9uw+nWhsq2kshFzUwQRjTs562ipN0U9s0uSHA+YYXLYHbX0
         YzMy5lnImsI8+wI7T+qNeqU6DhhwzZvTHPaSAgXBHncjvRfLYnF9ux9TTiTaJ8zl8rlq
         Jmeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=nPLqeL1FvTuzrY/ClRhootRHt5J41w78xjlPy17QiOY=;
        b=N5WqqJ29S6S4XjTMCzkVA5qcI+kgHixWCrB2iW9G9GR41UjFHT2ZrtWbMrpXeNGmpu
         A8xAVm1jU9XRbVrZrq9moiwu+xcQq2NtLbOFdPArHRvGxYRyTRsNB/77t2fF5JZchKUB
         MbruO3ZkuX9844imaTDniO+n+5bbJ/SE1wny7kxv/Hlt3Piv2vpEplsFS+YkU4ZiUuWJ
         QGEBEQIfDJBWaWe31cmLi/6pp0k03WQ66Drtv6XWF3AeWGBN7p3ZXu+QP+r/xerP8jF3
         WAPBHe8Zg4ruPV4MM3RqtOF1bDYx4QVjrpvOqpZSu73eDTesHlCSuYjcskbRUCo2jXe4
         dTLQ==
X-Gm-Message-State: AGi0PuYpNA12IDsBcbpdFDXzI2YXaNK9cVuIFKMQaJ7tRlD7oXQLh3bl
        OlM9WEbUi97smadXxq0BSwa1Wj312ms8vtgwtZaS8w==
X-Google-Smtp-Source: APiQypITdaVqZ8peJ6lGMXWoRs8HXZK9yFmXJ96oVrl04X+kO4xbgzoLGKORF3ZF5ySFyQfSJ/PkC5t3seAZZ8SWIKQ=
X-Received: by 2002:ac2:4257:: with SMTP id m23mr11039442lfl.141.1588591090752;
 Mon, 04 May 2020 04:18:10 -0700 (PDT)
MIME-Version: 1.0
From:   Jann Horn <jannh@google.com>
Date:   Mon, 4 May 2020 13:17:44 +0200
Message-ID: <CAG48ez3xjhUDd3qMm=cEa+asLvrQOXEpVs4_w6Y6MuerymMbCg@mail.gmail.com>
Subject: open_tree() manpage submission fell through the cracks?
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, pvorel@suse.cz
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

I noticed that open_tree() doesn't have a manpage yet; and while
looking for a WIP manpage on the lists, I found this mail, which is
from February, submits manpages for open_tree() and other related
syscalls, and doesn't seem to have a response from you:

https://lore.kernel.org/linux-fsdevel/20200207174236.18882-1-pvorel@suse.cz/

I wonder whether maybe you haven't seen that mail in the first place.
It was addressed to linux-man@vger.kernel.org as "To" and
mtk.manpages@gmail.com as "Cc", which is the reverse of what's
suggested at <https://www.kernel.org/doc/man-pages/patches.html>...
maybe that runs into some filter on your side? Or maybe it just landed
in a spam filter somewhere or something like that?
