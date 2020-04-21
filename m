Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 862C91B307F
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 21:38:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726168AbgDUTiq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 15:38:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726056AbgDUTip (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 15:38:45 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94D21C0610D5
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 12:38:45 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id a2so11955269ejx.5
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 12:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=fCh85vlSGe1cubERKBUm0+tNmuyV3bdwOhj3pIkIwDs=;
        b=ezGDZc67WGpkCskQtNWH8h7ZkVSYDr//VuJ/rMOsC+lJFASf4LdaN6c4nDB6/eZHU5
         ZWUQzo41neMBuyYatZ5WVAs7j6IowlspxWyNFUsZ4nbRYGY9622CBSwNOmULrG9w5X03
         PTRhdRDZltOFWfVLbe2i4TfzOsDr24X3HqOo5AJrAxZeMwYuxPM1ABibyqjXOrW/4ahx
         zyItWt8aCjXGm3B7/Jbmv6MEqKRG77m3KvkiLJEfEunZiFWpwhIlwDQ9LQpI+O2VeYA6
         l7/WwQWM3a2oeMq7dP30OOa5h1wY0NCzBFKxqcf437fxxuhEsY68hWmiYcHxQLTy/bLv
         feRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=fCh85vlSGe1cubERKBUm0+tNmuyV3bdwOhj3pIkIwDs=;
        b=UoW1r7tfYf5UOtobDzCw8rCpIwlIWTQ0VW9F8ofhwMhPsTfGhJvoy5WoEBgUp/L8zh
         jNjiF5PsfoA7Sdmrcbge0hZE9h4DcWzN+30Jp/gcRq5edDe3B+hOAmSdMg1gGccfbekU
         UQv2PTtnortRxTRKpV++bXpDYxnOWW8198FgCYDs7Ge173FLxC36RULgGRvXAP0luhdS
         7yAMBmXKyi3bEKGVzSz/C0FTWBeiFM10BKxCn8SdOppMx0Tbt8GyAsyiCITKiV896JQr
         SfCYuVjD23vx6dJdsUFpdwWFJpBvrVXImm+sL/Cd8iPs0s7MNQCbyd6qXuQHzDdtc0H/
         Pqkg==
X-Gm-Message-State: AGi0PuZxNdc6ax34jN22rz3IyqFgR9qsZqtRsPsrLS2uTVdCnsBMXDUf
        aTLKUPy/fpO3HCxvG1zp1qT+fk1D605XSZoElSk=
X-Google-Smtp-Source: APiQypLwLgapOIikfu8CbZYD/hqQfQ7b0hhXKO/8V1lV9otBSEKmGc4KInUuiE9IuYzthY7Zu+UNEdaajaI+2sbi+sU=
X-Received: by 2002:a17:906:add7:: with SMTP id lb23mr23921924ejb.6.1587497924312;
 Tue, 21 Apr 2020 12:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064812.GA31256@Debian-50-lenny-64-minimal>
 <CAKgNAkgkNcUiV=Tc38Kd46fECzaZZ0hyVw8U2visf5absJq=Gg@mail.gmail.com> <20200421191051.GC4951@Debian-50-lenny-64-minimal>
In-Reply-To: <20200421191051.GC4951@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 21 Apr 2020 21:38:33 +0200
Message-ID: <CAKgNAkiizD62V=Yi5Pt+3kzsgqwzzoYY+J5h2SskrHwQMd591w@mail.gmail.com>
Subject: Re: Errors in man pages, here: msr(4): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Tue, 21 Apr 2020 at 21:10, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Sun, Apr 19, 2020 at 10:47:38PM +0200, Michael Kerrisk (man-pages) wrote:
> > > can read proc as regular user (etch)
> > >
> > > "This file is protected so that it can be read and written only by the user "
> > > "I<root>, or members of the group I<root>."
> >
> > I need more context here to find which part of the
> > page this note refers to.
>
> This is the last paragraph before NOTES, i.e. the last one in
> DESCRIPTION.


Ooops _ I must have been looking at the wrong file.

> Having a brief look this FIXME probably is (no) longer correct, but
> the translator who noticed this 2011 is no longer active, so please
> close if it is (no longer) applicable.

Close it, I think. Certainly on my system /dev/cpu/N/msr is readable
only by root.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
