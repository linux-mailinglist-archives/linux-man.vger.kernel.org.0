Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34E642E7350
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:04:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726126AbgL2UEf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:04:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2UEf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:04:35 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1C80C061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:03:54 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id x13so12834302oto.8
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=VdvbKTuDDol9SN6PmIVTYAedQvxdRgi78Xz+NAEXqi0=;
        b=tozeA17XowsL4cOtzITr9FPT4n+OoYyRmSxV9wGU2tI+MGbAGsX6IHuRcfli97jpJd
         oDxB+BgqFIzTLoFZAKUyRBtZjjXesE+fltGp5kqjJAOHkBDNMW7rzo8t4kStiF8pW0AH
         l27P+xb/hyZJNmKRRV5uM2AInIOFBdqYD6LFtsmLqNcGYlhcQ6LN3dSEbQYeS8TbrRMk
         COku8887w465CQIi2n6cvcKasMxJUQtC4M9FX59AFvzzgdqu9Oa0gboka5FHXTuD+pAC
         Y4oevVxWXbhIrxDEPU8wdIQR75VhNh0mzYOj/QJlurUANooZa2dwlcqz/Ui/DQfjapJx
         ok8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=VdvbKTuDDol9SN6PmIVTYAedQvxdRgi78Xz+NAEXqi0=;
        b=EM4R5BMSoE4j1ORqbcFknx9tjXks2rcz74Nn29EtCuI4c4DPWcZMBNVdbuYPKVOn0n
         P4a3tSKI4Anw5xGp89eJXH7+uYU/saRjdmQpdVaqA6YbWogtaKYGVdl/RA9wDhslGkg/
         b0cGVB2F+gMfrmEgIBy8Fyhjt6QIbD9Vs+atH7pj6ksEdl0PvULsQcMjyrodlJevm8bH
         rC2jblED7gR9Zlw2D1jUdPCB0aYkOAG/AaqO6mzrIzeSTWBuB82cc1mlcUdgeEFjMG98
         vGs8BykbNBbKhkvhv6fPC3XutL3InxteLp+5chKt3PwtFtlm0KNjgqmrsK2BdEAPzYZL
         kCQg==
X-Gm-Message-State: AOAM530pJQZxHhQfL4gVLefChrps4DkRF85ISCzQ6Fk1v6bUB9TIxlCQ
        QZCIwDdilvE6btrB3zb3SsgRbcfrtSsVtaEXRb0=
X-Google-Smtp-Source: ABdhPJwg3zYLxR4P7P3OFgfjHSWzwh+PYjngu2+pzBipS6cDJPf4PSF/ofazqB3QnpWijA5RyxdGgFSVcaWxXIAlWeE=
X-Received: by 2002:a9d:5e0f:: with SMTP id d15mr18538306oti.308.1609272234163;
 Tue, 29 Dec 2020 12:03:54 -0800 (PST)
MIME-Version: 1.0
References: <a09d053d-256e-c031-e4dd-ff4d552468bd@gmail.com>
In-Reply-To: <a09d053d-256e-c031-e4dd-ff4d552468bd@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Dec 2020 21:03:43 +0100
Message-ID: <CAKgNAkjWVw2cYt38+gcNdyyL9ebnG4fY3JMHoHpz=799z_2jeA@mail.gmail.com>
Subject: Re: off64_t, loff_t
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tue, 29 Dec 2020 at 15:03, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> This is related to:
> https://lore.kernel.org/linux-man/CAKgNAkhuL9JRG_YhVG6Y-yjobDVAGjrUSdcQ4kV-4MABjZiwRQ@mail.gmail.com/
>
>
> copy_file_range(2) says it uses 'loff_t':
>
> $ man 2 copy_file_range \
> > |sed -n '/SYNOPSIS/,/DESCRIPTION/{/copy_file_range/,/^$/p}';
>        ssize_t copy_file_range(int fd_in, loff_t *off_in,
>                                int fd_out, loff_t *off_out,
>                                size_t len, unsigned int flags);
>
> But glibc uses 'off64_t' AFAICS:
>
> $ syscall='copy_file_range';
> $ pattern="^[^ ]*ssize_t ${syscall}[ ]*(";
> $ find glibc/ -name '*.h' \
> > |xargs sed -n -e "/${pattern}/p" -e "/${pattern}/,/^$/p" \
> > |sed -n -e "/${pattern}/,/;/p" -e '/^$/p' \
> > |uniq;
> ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
>                          int __outfd, __off64_t *__poutoff,
>                          size_t __length, unsigned int __flags);
>
>
> What would you do about it?
> `sed -i 's/loff_t/off64_t/' man2/copy_file_range.2`?

Yes, I think that change would be appropriate.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
