Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4672526808C
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 19:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725928AbgIMRYn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 13:24:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbgIMRYf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 13:24:35 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E98C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 10:24:35 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id i17so15251789oig.10
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 10:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=be+x6+q7xnnf491BH3pPbIKO8UFwetSbJjZnZKjm2Nw=;
        b=pMuDL+8HPGWYYk57bnDtu4NaJC2dI9teCBASAKNJJ3QCdlgQCtkM0pnQAnfwIR0c2C
         RYaGpXauhkfAN/LggaZ09d/iBEvYpLv07Qhlj5OkCNy3bv8l2Xw2OwdBcqViYDxFXO4k
         oJqXww0umgy/J34odFq5iBPZK282EQCDkVw2Pc1SCLDV8USX6KwZmULy4GRwwpZ3c/R8
         84kEf985Lq3o61HAmAZ486HAYuJlvUu1hricxtMZUin5CgPP93G7TTJAFz9xKqEsc3qg
         iInhtifbOboXwcLDt2TLAuhHXfKFiepk+TnpZaGsf+mcBX9etO6JpGcV7YFSdXWnkzGB
         asuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=be+x6+q7xnnf491BH3pPbIKO8UFwetSbJjZnZKjm2Nw=;
        b=pP46fmMlnj8WBmFNfh+lzuneJ/BWvPDRC3+9TaRRCWXd8LW/CqxalIGX8H6TyQiYTL
         508e0Dpu9qshMTxxiN6YiHlhSH/riKKaXWyYDpttGtsvzZ/tfF4HWb+Lq6pcY2gxD7W9
         czRw0ppupHmrZfmH/VYrxv2xQ6mW9XNqxSE9Y3YeNgFRMDA4pX4jxvf4SFj7K3ku7AP8
         WTlaEVm7bVPlryyU5L6ldrHKoTwYg3fPD3GZ5+e3/eRBvzmnSNE7WxXL8gMajTx4llpD
         O/24VbM2sHlcSHnEygzLxynAWc0TpW0qFSfll4m9eYaIADscoIQ9JHAMzPCVO1kmIBdN
         7zuw==
X-Gm-Message-State: AOAM530L5yZvw6dq9+3T4cTAgGMQTMBAaLXusXwFT3vBv/BrVBsBlJka
        73TX3bHZE4dkSH+ksrL4+VPXYvfsJf1yKHLxKK/s6BPqqlQ=
X-Google-Smtp-Source: ABdhPJzh4WtrK0j/LmmGeuxZcfp0IerzNG7eKQfK8n3N2gj2fNG401CoyhFqffU0K0vxD+WYZKHRUmrg0dB6huo6HFo=
X-Received: by 2002:a05:6808:8ca:: with SMTP id k10mr5906618oij.84.1600017874656;
 Sun, 13 Sep 2020 10:24:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200913150449.11188-1-kbukin@gmail.com> <20200913151642.GA14054@altlinux.org>
In-Reply-To: <20200913151642.GA14054@altlinux.org>
From:   Konstantin Bukin <kbukin@gmail.com>
Date:   Sun, 13 Sep 2020 10:24:23 -0700
Message-ID: <CAF98MAKpdwqowXT9VnO=bZ5CNYPp1Z1OWHg5qVrH7d-0yyui0w@mail.gmail.com>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     "Dmitry V. Levin" <ldv@altlinux.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On x86 the size of ino_t does not appear to be larger than long. It is
4 in 32-bit programs and 8 in 64-bit programs. On what platforms the
size of ino_t is larger than long?

Here is the beginning of memory taken by struct stat sb in 32-bit
example program run on my file:

(gdb) x/8xw &sb
0xffffd0d8:     0x00400080      0x00000000      0x00ca0000      0x006901c0
0xffffd0e8:     0x00008124      0x00000001      0x00000ab7      0x0000001e

The first eight bytes is st_dev. 0x006901c0 are the lower 4 bytes of
inode. I am not sure what 0x00ca0000 is. Is that just padding?

For comparison, here is the beginning of memory taken by struct stat
sb in 64-bit example programs run on the same file:

(gdb) x/8xw &sb
0x7fffffffdf30: 0x00400080      0x00000000      0x006901c0      0x80cc2dc6
0x7fffffffdf40: 0x00000001      0x00000000      0x00008124      0x00000ab7

0x006901c0 and 0x80cc2dc6 are lower and upper 4 bytes of the inode.
0x80cc2dc6006901c0 is what =E2=80=9Cls -li=E2=80=9D reports, but in decimal=
.


On Sun, Sep 13, 2020 at 8:16 AM Dmitry V. Levin <ldv@altlinux.org> wrote:
>
> On Sun, Sep 13, 2020 at 08:04:49AM -0700, Konstantin Bukin wrote:
> > inode numbers are expected to be positive. Casting them to a signed typ=
e
> > may result in printing negative values. E.g. running example program on
> > the following file:
> >
> > $ ls -li test.txt
> > 9280843260537405888 -r--r--r-- 1 kbukin hardware 300 Jul 21 06:36 test.=
txt
> >
> > resutls in the following output:
> >
> > $ ./example test.txt
> > ID of containing device:  [0,480]
> > File type:                regular file
> > I-node number:            -9165900813172145728
> > Mode:                     100444 (octal)
> > Link count:               1
> > Ownership:                UID=3D2743   GID=3D30
> > Preferred I/O block size: 32768 bytes
> > File size:                300 bytes
> > Blocks allocated:         8
> > Last status change:       Tue Jul 21 06:36:50 2020
> > Last file access:         Sat Sep 12 14:13:38 2020
> > Last file modification:   Tue Jul 21 06:36:50 2020
> >
> > Such erroneous reporting happens for inode values greater than maximum
> > value which can be stored in signed long. Casting does not seem to be
> > necessary here. Printing inode as unsigned long fixes the issue.
> > ---
> >  man2/stat.2 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man2/stat.2 b/man2/stat.2
> > index 7e5417480..76997bcbe 100644
> > --- a/man2/stat.2
> > +++ b/man2/stat.2
> > @@ -681,7 +681,7 @@ main(int argc, char *argv[])
> >      default:       printf("unknown?\en");                break;
> >      }
> >
> > -    printf("I\-node number:            %ld\en", (long) sb.st_ino);
> > +    printf("I\-node number:            %lu\en", sb.st_ino);
>
> By the way, the type of st_ino is ino_t which might be larger than long,
> so both the old and the new variants are not correct.
>
>
> --
> ldv
