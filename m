Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8FAF41448A0
	for <lists+linux-man@lfdr.de>; Wed, 22 Jan 2020 00:58:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726780AbgAUX6Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 18:58:24 -0500
Received: from mail-ed1-f44.google.com ([209.85.208.44]:38696 "EHLO
        mail-ed1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbgAUX6Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 18:58:24 -0500
Received: by mail-ed1-f44.google.com with SMTP id i16so4897496edr.5
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 15:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=JxtN6CAEf/Tg3y+oGhr3rMBXLZlJyQBTtkDLBucyh+I=;
        b=aI6DYNKcBespQzi0iiCxHKBeYaqvBLmwMzmKJKSy0fQQ96qJZqZlpoaqnDjFKXVXSA
         t64OK0KXvlK9b87M1i/0cAiVmJyoYxMo7D0sxcUB2UDWkU4q6BlnBYH/SlSF6VA90S94
         FHbsVXFZA1UPLqEMbd3nyDgB088yFMjrbsyb2DDETAnMISSs94PyX+aOvifDUn0v97Xp
         5Ep9v9ysL0GcX+mnWKvlDPykpvGlwKk1f8gwT7WrO1i7sHb4TQ8zr484xc6426k7rlhu
         9zlC7eNBVmyCcTqnR0Emyi9+1/9VfNqBt5vqCSzfV4iOqb4IR3e/tbF7fgSIr1gNvDNQ
         JWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=JxtN6CAEf/Tg3y+oGhr3rMBXLZlJyQBTtkDLBucyh+I=;
        b=cM2ZbV3MpTho62fVZ19+AYZLT8rfdfmKedNpHjJB3HZg8EchxrIe++ogBmBkApTcaY
         crGPi4Dos3jLPxkUk6f+RzB8sk0BJe4lurdJwbUs1ug2/jwabN5pW6aSyYoDHYKxLao7
         hn+aniakv5/oETiJZuro20tbeVdezVjFRoLNFwldZ6T4B0M6/o8wqfJhmuUYZVxHZkYj
         7tcmRFH1Rf+ucEd5iq0leih8kw2iOTKvPH1col6Qr+egiBN1HxekNawAz4htnq6uxwJ8
         hH5kBNW2Xs+YaRx2/x9GRT2k5vPR2MMvyqXp+2+ZMSa9odBmZQ410R3hAI+1StQwvL8u
         ogEg==
X-Gm-Message-State: APjAAAU0HLIX5zg4OSPgAtL07/aIAv2U269oWwO/XyNdUR6Nesos/VxL
        3UsFMIFz7I8eQHC+LsMebwQKnIseUZlozqabPyY=
X-Google-Smtp-Source: APXvYqzp6/xR55EJ6FelZI5M884TnvldVTP8EoHVgtagtwUzOOogAf+7cJkawQPOL9jJEJcSRMpFeFTK8c03evMU8c8=
X-Received: by 2002:a17:906:5c04:: with SMTP id e4mr357227ejq.80.1579651102586;
 Tue, 21 Jan 2020 15:58:22 -0800 (PST)
MIME-Version: 1.0
References: <1f443971-a9c2-214e-5daf-0e03fbb769c2@inode.at>
In-Reply-To: <1f443971-a9c2-214e-5daf-0e03fbb769c2@inode.at>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 22 Jan 2020 00:58:11 +0100
Message-ID: <CAKgNAkiKjWyCbVWrgUV7nc8U4TUaYG-KU-=HqOVmL2pwu0GBLA@mail.gmail.com>
Subject: Re: bug in example in http://man7.org/linux/man-pages/man7/pkeys.7.html
 void -> int
To:     Aaron <aaron_ng@inode.at>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Aaron,

I'm sorry. I don't understand your bug report. As far as I can see,
the manual page never looked like the text you quote. But, maybe I
misunderstand you?

Thanks,

Michael

On Wed, 3 Apr 2019 at 16:10, Aaron <aaron_ng@inode.at> wrote:
>
> Hello!
>
> In http://man7.org/linux/man-pages/man7/pkeys.7.html
>
> We have
>
> void
> ...       wrpkru(unsigned int pkru);
>
> ...
>
> int pkey_set(int pkey, unsigned long rights, unsigned long flags)
>
> ... returnwrpkru(...
>
> Regards, Aaron
>
>
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
