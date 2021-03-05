Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8892932E62E
	for <lists+linux-man@lfdr.de>; Fri,  5 Mar 2021 11:22:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229599AbhCEKVn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 05:21:43 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:30953 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229562AbhCEKVb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 05:21:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614939691;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=952QrasoasnB9IBFh93Ys2dlUfE/0TcMtbpqvseuSI4=;
        b=Cxgfr5jfJ4IAnrkeDxXbduXZj33d7gKUU7Nei3zxLVJtHZxHi9wqlg0bpSPb6C1zlpWMiQ
        SLAoy8ISDJ/BdZZlKLdJya6DlBRDblYBDtzqzLw79Oim0PbEkszImvtDIX6rE4ChodiSfO
        c/qxbfIXUKIhLFXJcdy0Q97PeLU5ohQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-tSgCFiVwPUSpQnBmXUlBig-1; Fri, 05 Mar 2021 05:21:29 -0500
X-MC-Unique: tSgCFiVwPUSpQnBmXUlBig-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7603C108BD06;
        Fri,  5 Mar 2021 10:21:28 +0000 (UTC)
Received: from oldenburg.str.redhat.com (ovpn-113-208.ams2.redhat.com [10.36.113.208])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 067E262AF6;
        Fri,  5 Mar 2021 10:21:26 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Zack Weinberg <zackw@panix.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] makecontext.3: Fix function declarator with empty
 parentheses.
References: <20210304194534.130735-1-alx.manpages@gmail.com>
        <CAKCAbMg3G4EAeuUhN9EQTDnrTSD0sPoH0uH1=kkpfj9qYorPdg@mail.gmail.com>
        <87v9a6hbgt.fsf@oldenburg.str.redhat.com>
        <c5df9263-edb8-c50a-e691-a454d4ae833f@gmail.com>
Date:   Fri, 05 Mar 2021 11:21:36 +0100
In-Reply-To: <c5df9263-edb8-c50a-e691-a454d4ae833f@gmail.com> (Alejandro
        Colomar's message of "Fri, 5 Mar 2021 02:13:52 +0100")
Message-ID: <8735x9hpe7.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> I did actually mean 'void (*f)(void)'.  Glibc uses that for the
> prototype (as you can see from my commit message (see above)), and as I
> confirmed just now, it also uses that type for the definition of the
> function:
>
> [
> .../glibc$ grep -rn '^makecontext\s*('
> stdlib/makecontext.c:22:makecontext (ucontext_t *ucp, void (*func)
> (void), int argc, ...)
> .../glibc$
> ]
>
> However, I should have read the manual page (I must admit that I only
> read the SYNOPSIS and EXAMPLES sections of the manual page and the glibc
> source before writing the patch).  It's clear that the prototype that
> was being used in the manual page was more correct (in the sense that it
> more accurately represented the actual expected function pointer) than
> the glibc prototype (eventhough the glibc prototype is more standards
> conforming).
>
> So my patch is wrong.
>
> Florian, should I file a bug in glibc's bugzilla?

I don't know.  SUSv2 has (void *func) (), which would make this a glibc
bug.  I'm not sure if I have easy access to POSIX.1 from 2001, which I
believe still has this function.

I am not sure if all glibc implementations of makecontext can be used to
call variadic functions.

Thanks,
Florian

