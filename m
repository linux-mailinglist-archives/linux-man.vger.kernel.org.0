Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3664235BA0D
	for <lists+linux-man@lfdr.de>; Mon, 12 Apr 2021 08:17:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbhDLGRY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Apr 2021 02:17:24 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:41873 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229461AbhDLGRY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Apr 2021 02:17:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1618208225;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=gT2qt2dPmZjKutIbJfKPMsLQrr289gqUxASFlV7QQjI=;
        b=ESZC0I5DlqpwIVpovmqAikon6uVw2FYzDOeXB7kgOlwlRdGG2BMnS31pAKzrWFCGafnXA+
        3x9yCtlZQHsOdOugH6tSo7A/uXnsffUmdn1W6Vs6Nc8PDK2wG2pKXZrZW6NBM+B6aKOH7P
        IZAf/GYl1cmXHWBl0p+76fiGkW7ut5s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-X5d1V0-dMLyekKCSDpM6Uw-1; Mon, 12 Apr 2021 02:17:02 -0400
X-MC-Unique: X5d1V0-dMLyekKCSDpM6Uw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7B2081746A;
        Mon, 12 Apr 2021 06:17:00 +0000 (UTC)
Received: from oldenburg.str.redhat.com (ovpn-112-148.ams2.redhat.com [10.36.112.148])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A3938100238C;
        Mon, 12 Apr 2021 06:16:59 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk (man-pages) via Libc-alpha" 
        <libc-alpha@sourceware.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
References: <20210403194026.102818-1-alx.manpages@gmail.com>
        <20210404115847.78166-1-alx.manpages@gmail.com>
        <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
Date:   Mon, 12 Apr 2021 08:17:09 +0200
In-Reply-To: <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com> (Michael Kerrisk
        via Libc-alpha's message of "Mon, 5 Apr 2021 13:49:24 +0200")
Message-ID: <87y2doni1m.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk via Libc-alpha:

> So, I think I'm okay with the syscall() changes in the SYNOPSIS.
> It might just take me a moment to get used to them. However, I do
> wonder if it is worth retaining a comment in the SYSNOPSIS, 
> something like:
>
>    SYNOPSIS
>        #include <asm/prctl.h>        /* Definition of ARCH_* constants */
>        #include <sys/syscall.h>      /* Definition of SYS_* constants */
>        #include <unistd.h>
>
>        int syscall(SYS_arch_prctl, int code, unsigned long addr);
>        int syscall(SYS_arch_prctl, int code, unsigned long *addr);
>
>        Note: glibc provides no wrapper for arch_prctl(), necessitating
>        the use of syscall(2).
>
> Without something like this, the reader may be puzzled at the use of
> syscall().
>
> What do you think?

Would it be possible to use real C syntax?

  int code;
  unsigned long addr;
  int result;
  result = syscall (SYS_arch_prctl, code, addr);
  result = syscall (SYS_arch_prctl, code, &addr);

Or perhaps omit the result variable:

  int code;
  unsigned long addr;
  syscall (SYS_arch_prctl, code, addr);

Thanks,
Florian

