Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 052EE1B64D4
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 21:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726323AbgDWTvf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 15:51:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726121AbgDWTvf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 15:51:35 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E67BC09B042
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 12:51:35 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id p16so5308623edm.10
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 12:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=fYHBpJ2WA60926wHI6D5kgI9MytEcDqYwE8//nx87Y4=;
        b=tS4bOG5PCIRKetAfU3rXmfnA9z7LBR7sGT8ei+lr6XQqIAXhMUCUXi6q8H1HyTYdVu
         AaW3MBbc70OtVzKp+HPhHlfW4xUltgpDFemXJ280pPIHANBvoglOxdm2ZwuLVEUplHE0
         sbjUKVl9z2axwHPJ8j/w/eRFa4J2mdsTfiZobkbGlZe7Pyq3oURUCfJbDf2xV19hKOEZ
         Lo1g7OpB8KZHXNv6j6ZJmC8as144wNW0Tj8rSCbo3QYZ+PJH/6sTogycNcrp2YAcTb0q
         PlfoRvI0+Hsm2swXiFeNxLTJ0+NI/6UP3WWw17NRkRIbzfMfZFQP0MEz0eOnFzOw26fT
         hZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=fYHBpJ2WA60926wHI6D5kgI9MytEcDqYwE8//nx87Y4=;
        b=LJgbHD5pIeD7cw1YB4L1Ah2dGjxfpUyPoHTdN8thV7lKPc0EZjI2yhn7TF8UazKIYw
         HIlykj5Eo92LXMjdn8M1Hddxrx6ks0hf4AbiGdhmHJT4GSTtQtPw86h7hU4bWXz968XM
         H6N/9MVzN3JtssxHIARCYHMspn3yGD3URrJrvw8QxCFlbq2eZ4AZ6L8dd1ABAZoIdD/h
         82UVcMJQqGArFkXQxr66zhT/zjk9VsX0SNfd6J0h11a/bEzLXb7GPTVzwA4kPIZoXLZx
         gqGQ98sGmXmK/fg9pqFQu6PCWvTG20OXVqDetx4PQ8tT5wnHMUMkyK1oPCkv6m6jNkEK
         CLEw==
X-Gm-Message-State: AGi0Pub0d2BRPBJvyke3uysNF4TLRVlbh40C9A4umsEkdWISdu97LGsr
        HJhOqLZiBaSnfkGitldhGhgIbMPJVL32nGz5DIiUBA==
X-Google-Smtp-Source: APiQypIIQkytEWQU0wCvQLKP2x+t7khaTp6dFmbkylOI5mtpYSNEAnppi6eY81JXkH69R4l2/Lxm5pTn5pf5Tdn4SBo=
X-Received: by 2002:aa7:cd6a:: with SMTP id ca10mr4163768edb.332.1587671493790;
 Thu, 23 Apr 2020 12:51:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064751.GA30098@Debian-50-lenny-64-minimal>
 <d79ae5ff-914d-3c86-43d2-16a7f94166fa@gmail.com> <20200423193644.GB6193@Debian-50-lenny-64-minimal>
In-Reply-To: <20200423193644.GB6193@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 23 Apr 2020 21:51:22 +0200
Message-ID: <CAKgNAkhosykqZpDSyanrHL_innYs0VGwgJoeYU1oqnm8NZyUJA@mail.gmail.com>
Subject: Re: Errors in man pages, here: charmap(5): Consistency
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 23 Apr 2020 at 21:36, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 08:56:30AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > How do the following strings align with
> > > zless /usr/share/i18n/charmaps/ISO-8859-1.gz
> > >
> > > "The following lines may have one of the two following forms to define the "
> > > "character set:"
> > >
> > > "The following lines may have one of the two following forms to define the "
> > > "widths of the characters:"
> >
> > This report is too cryptic. Please elaborate.
>
> Again as the original translator from 8 years ago is no longer
> available I struggled (without success) to get more background on this
> but failed.
>
> Please close this bug report and sorry for the noise.

Ok.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
