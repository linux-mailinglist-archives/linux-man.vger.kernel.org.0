Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92A081A8332
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 17:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2440550AbgDNPiG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 11:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2440546AbgDNPiD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Apr 2020 11:38:03 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77493C061A0C
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 08:38:03 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id m12so17732896edl.12
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 08:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=25vJu2jOiyBwdbTf/LvQlOTvoBconmEf0BphhQQTn6U=;
        b=GZvTDndLUXn/VkkqhAYIFdsly902fVaQrSgF26L8SXDHhFe0jJu/oMFuNnzwrFIOOE
         efydAmMpa5MkIkj9xNN5WYwUvNB64t0pYmPfWYhE5xSGt7p1Miw54JgIvzsJIBrYolm0
         db6KohMrImprZjCXkWv2znObypPSUQHfOMS2NNgadTi0vpHHz5Wi4OsFxFiAc7Vnm9Af
         FDfwVBUIRsiPWSVPC8oF/RLDzCn5S4jCn1K6BiIRlOFRj5hXSfVFvPKSTN3GdUSpL+2D
         arbWbuCJzNOHPxeocicAivqOCmWJ/vGWNbVCmgocL/A7rvq03llAopQX/AbERCoOaxAL
         ZRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=25vJu2jOiyBwdbTf/LvQlOTvoBconmEf0BphhQQTn6U=;
        b=r0b4bKjPo1jmb3vCgy9skwPqnEcJxuB2UkeHSOEkB4U1DXvUqeJAqTWUJiP5AUfqOT
         RLpk3OkbXUkyMrHyIjp7n1dVbAnihRwRQ+qAvv6Eh3ayYKpUvpM/HbVB6aePYsWZ+12p
         MmXdshgIKh0CJYbfei1AeEYW3nTwFUbAsPJgLDsppuayDyMvmxst9myGYO1Fbh6GLaA7
         4V7VVM8gYTePj7O+revaRSHCHqkeaUee1ybuL+NJOWYSbWArAzgoZ/JLV7s4Qwmth1Up
         SHW2FC058USz6fKYQ2OQa6Mpy7yZh1z6zwXrAAL83kX99kyNFp3GQFY6CcdfJjVR3+yb
         BFaQ==
X-Gm-Message-State: AGi0PuZweD+29rQVditj0YYISNf5OXhvo67sXWBnrTKIGTZU7M8Wvhp1
        W+Lnok/jjQaycZDztSVLMQjz2siFT8TvoS15epSJ+O0A
X-Google-Smtp-Source: APiQypKWEEB/mNmbAVrpfEXsAOsuzkt1K7SZte7kefTo98eamRAtxA9yRMc6SsSBHAZ+kwQGO8faPC+pSL6T71F59fE=
X-Received: by 2002:a50:a68a:: with SMTP id e10mr21557310edc.317.1586878682180;
 Tue, 14 Apr 2020 08:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <545F8D2E.5030308@gmx.de> <CAKgNAkh-HBjh5AqNpTTfQjgeJVYx9LGpGDzO87zMWEmgMOd0bA@mail.gmail.com>
In-Reply-To: <CAKgNAkh-HBjh5AqNpTTfQjgeJVYx9LGpGDzO87zMWEmgMOd0bA@mail.gmail.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Tue, 14 Apr 2020 17:37:53 +0200
Message-ID: <CACGkJdv5Be4KqmsP2AK99FmkZ5hB9jJk9YzsrS8Qzph8ceBvvQ@mail.gmail.com>
Subject: Re: ioctl_list.2: complete overhaul needed
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Cc:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        linux-man <linux-man@vger.kernel.org>,
        Mike Christie <mchristi@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Apr 14, 2020 at 5:18 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello Heinrich,
>
> On Sun, 9 Nov 2014 at 16:52, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >
> >
> > Hello Michael,
> >
> > the current ioctl_list.2 man-page descripton starts
> > "This  is  Ioctl List 1.3.27, a list of ioctl calls in Linux/i386 kernel
> > 1.3.27."
> > So the man-page represents the state of Sep 14th, 1995.
> > It enumerates only 421 out of over 1200 calls.
> >
> > The list contains hex values of different constants. I just wonder for
> > which architecture (alpha, i386, mips, or sparc at that time). No
> > information is supplied.
> >
> > Current values depend on the architecture, e.g.
> >
> > On amd64
> > 0x82307201      VFAT_IOCTL_READDIR_BOTH
> > 0x82307202      VFAT_IOCTL_READDIR_SHORT
> > 0x80047210      FAT_IOCTL_GET_ATTRIBUTES
> > 0x40047211      FAT_IOCTL_SET_ATTRIBUTES
> > 0x80047213      FAT_IOCTL_GET_VOLUME_ID
> >
> > On mips
> > 0x42187201      VFAT_IOCTL_READDIR_BOTH
> > 0x42187202      VFAT_IOCTL_READDIR_SHORT
> > 0x40047210      FAT_IOCTL_GET_ATTRIBUTES
> > 0x80047211      FAT_IOCTL_SET_ATTRIBUTES
> > 0x40047213      FAT_IOCTL_GET_VOLUME_ID
> >
> > Hence hex values should be removed.
>
>
> As you suggest, I've removed the hex values from the lists.

Those can be replaced with the _IO* macro definitions. Meanwhile,  the
list is somewhat far from complete; strace has some approximation that
can be uses a basis of a more complete and reliable list
(linux/{32,64}/ioctls_inc*.h and linux/*/ioctls_arch*.h), but I'm not
sure if it is worth adding to the man page (moreover, entries are
constantly being added and changed there; yes, breaking the kernel ABI
in the process sometimes).

> Thanks,
>
> Michael
>
>
> > I further suggest to remove all documentation of structure details.
> >
> > The following command can be used to create the raw data for a new list
> >
> > grep -GHrn -B3 -A3 --regexp="\s_IO[R|W|RW]\?[_BAD]\?\s*(" \
> > include/uapi | \
> > sed ':a;N;$!ba;s/\\\s*\n[^-]*-[^-]*-/ /g' | \
> > sort | \
> > grep --regexp="\s_IO[R|W|RW]\?[BAD]\?\s*(" | grep -n ''
> >
> > Best regards
> >
> > Heinrich Schuchardt
>
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/



-- 
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
