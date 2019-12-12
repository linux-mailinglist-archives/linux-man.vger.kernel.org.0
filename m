Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4078911C62B
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 08:01:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728070AbfLLHBH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 02:01:07 -0500
Received: from mail-ed1-f67.google.com ([209.85.208.67]:46738 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727970AbfLLHBH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 02:01:07 -0500
Received: by mail-ed1-f67.google.com with SMTP id m8so839709edi.13
        for <linux-man@vger.kernel.org>; Wed, 11 Dec 2019 23:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=McaTYZePw0oR+QguLJkN//7aPlNElRfVlAJmLyRIkpk=;
        b=RlIRM8FqkjrfUy7k5vWS+BKA70ZYhKgT5OSRsYXJEWfSoT3gdri+y8zymidhREIRLe
         0nsF7jdgxFq8o8hmuqTZfBFYySNdQJD6ZbUCY/+4tCDhqtQll2VfBcjANY8QeLdrkNGo
         6JY/V2WEK+BwjGIYk9GogLrHuvKuoV0GtMMWS75yxzzHjU1V5z0cY0qytqVAtPhqvDk7
         GQrvoIfPdsd5PS8BoLAFo2Q7cS4U/Ok4KQEgWm29b/Jk6PxNDcsuOhBiY1okvGP/9Yyj
         8WU/A2zB1hMCcFog+Y/wl+rarjwhalMB3G/KaFbc8EFXRPE+RoqdEgRSp15B3KE5A8n9
         bc7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=McaTYZePw0oR+QguLJkN//7aPlNElRfVlAJmLyRIkpk=;
        b=ag5NQk4ChE5d2E48GK5n0Y4uIlCes9GZ02Y7UMEjDRdPJ2sIER3hzOErjPoE547dTk
         PJinNzXn0IInQ4Z/gLa15ytsiIadnqSruDmpGMxuzkX60LoD9DGUDjlzeqgr0Vgx6xaL
         281hEDSC3o/lrFe0FPt74MWPvmJB+DW3eYiJa4hDaqzUvZfGr5zanv0f8LYxzXBPSvmk
         Fz4fGQMndbMF+BT8C3Qfcx1bbxfJ3P8hRn6qXztCoe8ScfTI93z4f77HBBSaAORvK6q2
         WYn+7acJjtHAfWkY8fsP7qFP7mEJ9xw+ItJ17WCHBa89T+83/jlQQOX6S+kRxRQxL3Ht
         bqLQ==
X-Gm-Message-State: APjAAAVZ9W27yhPD8Ua9Af2VWE29uJg6HIVQEfbgyVLsc/s3uvmaUYQP
        fnUV+dbyXBtw71XLd7cmARv+hx0D4wTgrUqIyNA=
X-Google-Smtp-Source: APXvYqyK9Si/+Bh5RMpgaTLwLm4awq4XBrLYT++mst8hUk1uTtanaSFDwukOWZ3C+uU9ewKiQoIE/Hn/FZy6TVHIWOc=
X-Received: by 2002:a05:6402:150e:: with SMTP id f14mr8140205edw.55.1576134065372;
 Wed, 11 Dec 2019 23:01:05 -0800 (PST)
MIME-Version: 1.0
References: <CAAztzVHLso69W=NzvnHJmOVnPOJ5s6-8B-Wvq2YZ0y4q72noKQ@mail.gmail.com>
In-Reply-To: <CAAztzVHLso69W=NzvnHJmOVnPOJ5s6-8B-Wvq2YZ0y4q72noKQ@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 12 Dec 2019 08:00:00 +0100
Message-ID: <CAKgNAkjy+fZGSoQRi2CP957TykN=hm5ed5O4UBDeMw60dxxZpw@mail.gmail.com>
Subject: Re: elf.5.html: `e_strndx` and `e_shstrndx` are the same?
To:     Robin Kuzmin <kuzmin.robin@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Robin,

On Wed, 11 Dec 2019 at 20:02, Robin Kuzmin <kuzmin.robin@gmail.com> wrote:
>
> http://man7.org/linux/man-pages/man5/elf.5.html
>
> I have a suspicion that the identifiers `e_strndx` and `e_shstrndx`
> are the same thing and it probably makes sense to unify them.

Indeed, 'e_strndx' appears to be a typo. I changed it to 'e_shstrndx'.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
