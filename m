Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 819CE1B4D9B
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 21:48:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726285AbgDVTsN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 15:48:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725779AbgDVTsM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 15:48:12 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65E8DC03C1A9
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:48:12 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id d16so2475616edv.8
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=n9VGgEDZGwikNPTGThhuERur5aJajyMTZnzxZnZNX/k=;
        b=eHg2qEvw9M45YA7fwBagJHyOV+TwJqCSS3iKDyt65mpYDZ3XBDhiwmZ5mEAcXKhvaY
         qLqhsFKSpJ/h3rjSJBXhwp4Y4maJZDP3cxZaK9zVoDftFmAJn0Ovug/6lbqYx357c0RR
         QkOzxvUB4GrSbd8Hu6hMaFsH/gIk/odNGVM9ZKPvgvwM3Yyi/1JeMsBXG/Cvowkqzckm
         WI5B7IdLJ2qPiPpULO4ZBTnu9N0Tc3J48o1VY8e4wIgA57q6OK9YhD8DOlS5GAUZqnwc
         MfB99pa2Ph0C/oSTWjjhdTAZ3mfkf7di28gqjfOP91QJTh97l81AuvhbTEdtafpVwKux
         At2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=n9VGgEDZGwikNPTGThhuERur5aJajyMTZnzxZnZNX/k=;
        b=nndLbhlRxy8y9s2dyKd2GIs6JyhdjdHiTErwwDao4mQUoGM8ohb7Nja0RhEXqzk3+Y
         Nmppj/70RkEJbuG9j3VEDVdRuh2Qdl5FKe2GFdDgP56DCKvJg/A9h26d3yJk80FP1UXb
         NfC2/OxEqLr/O9XxoIRshRQbuwmB0HxoyW3lhdWWO2KJTB2W+Xx4aiBkUFUIB03xIFFY
         NDJlv5Px0R0ohFazmccWAuLl3GwWDHFN0f6NmOJpIiKvhO/LhxXCD4LRrRflR2lI1pjz
         bOmbqX19u12/UQO0tGevCl+47yvZh1HDxgAijoK1lgbqr/pOjW4ggI1ZiUXTzrIoe31m
         b6oA==
X-Gm-Message-State: AGi0PuZjuOaf/tysrWWC5HtghTKE2vsRco/82g4qWB29P7mWTCuAdRZI
        ZQY59WRkJQQqE3f9JDs8A8RzMBWTiL5pdkqXVBs=
X-Google-Smtp-Source: APiQypKy+V1KopJCIeX+KrHqTsOK5pNPYkIifJLif8AVgTCqmE/41UPSKWzytLqyN11rIwZ/q0DDIMZBAAzGFsTxe/U=
X-Received: by 2002:a05:6402:7d6:: with SMTP id u22mr192321edy.149.1587584891171;
 Wed, 22 Apr 2020 12:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064805.GA30863@Debian-50-lenny-64-minimal>
 <152b1877-5332-3aba-fb58-e755db9c3b82@gmail.com> <20200422192528.GC26557@Debian-50-lenny-64-minimal>
In-Reply-To: <20200422192528.GC26557@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 22 Apr 2020 21:48:00 +0200
Message-ID: <CAKgNAkiSywLg+=3D3gRx7oupofNi8g42heTTst+mDxomjdE_1A@mail.gmail.com>
Subject: Re: Errors in man pages, here: initrd.4.po; Missing reference
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 22 Apr 2020 at 21:25, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 08:40:43AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > initrd(4)
> > >
> > > msgid "When booting up with B<initrd>, the system boots as follows:"
> >
> > I don't understand the report. "initrd" is a reference to the
> > interface that is subject of the page, and as such, there should
> > be no secion number.
>
> Ok, then leave it as is.

Okay.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
