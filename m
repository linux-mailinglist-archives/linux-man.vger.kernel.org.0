Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0C40292A64
	for <lists+linux-man@lfdr.de>; Mon, 19 Oct 2020 17:29:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729910AbgJSP3g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Oct 2020 11:29:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729075AbgJSP3f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Oct 2020 11:29:35 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA923C0613CE
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 08:29:35 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id p15so230630wmi.4
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 08:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=4objxiWWdmdYl/6IcaNg+xFa0q9tF2n6Ld8vAI4q69I=;
        b=ZEL2gmXQ4SLeiZIbZzQ8X9p/B2fHnT5+y/vZVY99XououQ9Qd5A4B1OuaPWlLz4zIo
         RduK+jw4Da6SRR7JYHQ3QVcLFA0XTMhreHdr+hBDJqMc/V3J+K3LkTasaAg4TlvopCh6
         dXbvklrSUFqlsssFR7gRvaJB1/smRtacf93jZ5iizs0yRXbDwU+HuCRWe0zQ70w8ld3G
         6UBuH7ZrD/GIkZWGULaf+U1MMuOi08ybHGypAp379J3C7++I06mtS1JjHyJO9nFCFjJc
         lxlpoHlg7EVrtzDKLWXkEyd1uJvvIwus0lnSmp8bekRQWQ6xtpOGeuTSKV43ws7Drq3B
         RSuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=4objxiWWdmdYl/6IcaNg+xFa0q9tF2n6Ld8vAI4q69I=;
        b=m0VkdQbAUl04n7GsDL5i4uguEk3Y5UW64cFRdpTCmyXdQGeMfFcnt/bD6X57pkTtTW
         C1TlpIlhpv0kmxA5AhVDq8cfqxVHynIZJcrH5vWLK68RJLyXz8CPEwFyQxCtNQ2wKtgV
         eUjXHkzoW5j/TtxJvs2Wrb7hbXTjJBBkAeLyFLENGuyVLrlrrR11uNKVGr9xlfxVCMl6
         3ODxtdREFdKmquG4Mavn/uIUXJQUfndrGMPc2o+erIpdCyK9xb8+lBe/+ayUVPWjjqXX
         NwgCpEKySBL6dJ/k3JEWwwM8xzi1Qq4KpMg7r7LfryJMksktJUKgUknh4kX1B9gpJhz0
         84ww==
X-Gm-Message-State: AOAM531tLj2857UiA6L0oM9PLZsuNGXbAchI9Ea1xSMXOsJydaNbTuYM
        cQEha46zlK5qTL6WS1pJyoAcp+QhYtg=
X-Google-Smtp-Source: ABdhPJw/h1eFErMBZw6Jws74xqZoWdWTEFPJuq3cKPnwUJaCiVj2TpQVCVbgPWE2iTnb32yoQNcYkg==
X-Received: by 2002:a1c:5683:: with SMTP id k125mr87174wmb.160.1603121374329;
        Mon, 19 Oct 2020 08:29:34 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id a7sm447839wmh.6.2020.10.19.08.29.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 08:29:33 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: queue.3 overhaul
Message-ID: <33af3ca2-d6ea-5f75-6ad2-e2f43eefe4fa@gmail.com>
Date:   Mon, 19 Oct 2020 17:29:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,


I'm working on moving and fixing code from queue.3 to different pages.

I'd like to send you patches against a separate branch,
if you would create one, to ask you some questions from time to time,
and maybe get suggestions.

Or maybe you could look at my branch on github
(https://github.com/alejandro-colomar/man-pages/commits/queue
(I may force push changes there sometimes))
(BTW, if you have a look there,
you can see how I'm moving&fixing the code from queue.3
to the other pages and maybe suggest a different way).

Or maybe I can just show you small pieces of code (no patches),
like in this email.

Whatever works best for you.


What do you think about this SYNOPSIS for list.3?:

[[
.SH SYNOPSIS
.nf
.B #include <sys/queue.h>
.PP
.BI "int        LIST_EMPTY(LIST_HEAD *" head ");"
.B  "           LIST_ENTRY(TYPE);"
.BI "LIST_ENTRY LIST_FIRST(LIST_HEAD *" head ");"
.BI "           LIST_FOREACH(TYPE *" var ", LIST_HEAD *" head ", 
LIST_ENTRY " NAME ");"
.\".BI "           LIST_FOREACH_FROM(TYPE *" var ", LIST_HEAD *" head ", 
LIST_ENTRY " NAME ");"
.\".BI "           LIST_FOREACH_SAFE(TYPE *" var ", LIST_HEAD *" head ", 
LIST_ENTRY " NAME ", TYPE *" temp_var ");"
.\".BI "           LIST_FOREACH_FROM_SAFE(TYPE *" var ", LIST_HEAD *" 
head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
.B  "           LIST_HEAD(HEADNAME, TYPE);"
.BI "LIST_HEAD  LIST_HEAD_INITIALIZER(LIST_HEAD " head ");"
.BI "void       LIST_INIT(LIST_HEAD *" head ");"
.BI "void       LIST_INSERT_AFTER(TYPE *" listelm ", TYPE *" elm ", 
LIST_ENTRY " NAME ");"
.BI "void       LIST_INSERT_BEFORE(TYPE *" listelm ", TYPE *" elm ", 
LIST_ENTRY " NAME ");"
.BI "void       LIST_INSERT_HEAD(LIST_HEAD *" head ", TYPE *" elm ", 
LIST_ENTRY " NAME ");"
.BI "LIST_ENTRY LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
.\".BI "LIST_ENTRY LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, 
LIST_ENTRY " NAME ");"
.BI "void       LIST_REMOVE(TYPE *" elm ", LIST_ENTRY " NAME ");"
.\".BI "void       IST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", 
TYPE, LIST_ENTRY " NAME ");"
.fi
]]

Things to note:
- The (many) spaces are there because otherwise it's unreadable (at 
least for me).


Also, I kept the copyright from the University of California and added 
myself:  I consider this to be a modified redistribution but not a 
derived product; maybe I'm wrong in that (I'm not a lawyer :)).


Please tell me your thoughts about all of this :)


Kind regards,

Alex
