Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DD1E433199
	for <lists+linux-man@lfdr.de>; Tue, 19 Oct 2021 10:54:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234519AbhJSI4d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Oct 2021 04:56:33 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:55522 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229930AbhJSI4d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Oct 2021 04:56:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1634633660;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=VIkH38z9CQwjIreJ/7smcTW6GItcEPn5j0D6u4J+ZS0=;
        b=bLYRx4bjs266vcrfiZu5Yuc34smbQQBW5lNFtkhU7VFIQp4B9dnWjifgIOho8LcDqgMwHo
        ommkfTMSxbpwofs7Mp5doxhEhkyeBYRfgZ6wshU6w/cxt+cLSahtJWumVzP/KdgaBscVT6
        wUOLMloxzigsgD3JVjXxXbKsytDx4W4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-nQd0VeR7NeGwR4dUuyxxZw-1; Tue, 19 Oct 2021 04:54:16 -0400
X-MC-Unique: nQd0VeR7NeGwR4dUuyxxZw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E16E018125CC;
        Tue, 19 Oct 2021 08:54:14 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.194.104])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 71A8860C82;
        Tue, 19 Oct 2021 08:54:13 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Thaddeus H. Black" <thb@debian.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3] filename.7: new manual page
References: <YWysyI6/sZtbQBBb@b-tk.org> <YW2hzL5vDfVZIAXY@b-tk.org>
Date:   Tue, 19 Oct 2021 10:54:11 +0200
In-Reply-To: <YW2hzL5vDfVZIAXY@b-tk.org> (Thaddeus H. Black's message of "Mon,
        18 Oct 2021 16:33:16 +0000")
Message-ID: <87fssxgzt8.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Thaddeus H. Black:

> +.TH FILENAME 7 2021-10-18 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +filename \- requirements and conventions for the naming of files
> +.SH DESCRIPTION
> +This manual page sets forth requirements for
> +and delineates conventions regarding filenames
> +on a Linux system,
> +where a
> +.I filename
> +is either (as the word suggests) the name of a regular file
> +or the name of another object held by the system's filesystem
> +such as a directory, symbolic link, named pipe or device.

Maybe add: =E2=80=9CA pathname contains zero or more filenames.=E2=80=9D

> +.SS Legal filenames
> +A filename on a Linux system can consist
> +of almost any sequence of UTF-8 characters
> +or, indeed, almost any sequence of bytes.
> +The exceptions are as follows.
> +.TP
> +.B Reserved characters
> +.RS
> +The following characters are reserved.
> +.TP
> +.B /
> +The solidus is reserved to separate pathname components
> +as for example in
> +.IR /usr/share/doc ,
> +each component being itself a filename.
> +For this reason, no filename may include a solidus.
> +More precisely,
> +no filename may include the byte that,
> +in ASCII and UTF-8,
> +exclusively represents the solidus.

What does this mean?  I think only byte 0x2f is reserved.  The UTF-8
comment is misleading.  A historic/overlong encoding of / in multiple
UTF-8 bytes is *not* reserved.

> +.B \e0
> +The null character is reserved for the filesystem to append
> +to terminate a filename's representation in memory.
> +For this reason, no filename may include a null character.
> +More precisely,
> +no filename may include the byte that,
> +in ASCII and UTF-8,
> +exclusively represents the null character.

See above.

> +.B Reserved names
> +.RS
> +The following names are reserved.
> +.TP
> +.B .
> +The filename consisting of a single full stop
> +is reserved to represent the current directory.
> +.TP
> +.B ..
> +The filename consisting of two full stops
> +is reserved to represent the parent directory.
> +.TP
> +(empty)
> +The empty filename,
> +consisting of no bytes at all
> +(except a terminating null byte),
> +is not allowed.

This conflicts with the presentation of / as a separator in pathnames, I
think: The pathname "/usr/" contains two empty filenames.

> +.TP
> +.B Long names
> +.RS
> +No filename may exceed\~255 bytes in length,
> +or\~256 bytes after counting the terminating null byte.

This is not correct for Linux.  Despite the definition of NAME_MAX,
filenames can be longer than 255 bytes.  NTFS and CIFS have a limit of
255 UTF-16 characters, which translates to about 768 bytes in the UTF-8
encoding used by Linux.

Thanks,
Florian

