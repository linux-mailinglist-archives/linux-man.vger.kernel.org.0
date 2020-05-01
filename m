Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCC081C0F80
	for <lists+linux-man@lfdr.de>; Fri,  1 May 2020 10:29:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728411AbgEAI3y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 May 2020 04:29:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728325AbgEAI3x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 May 2020 04:29:53 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1383C035494
        for <linux-man@vger.kernel.org>; Fri,  1 May 2020 01:29:51 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id x1so6961725ejd.8
        for <linux-man@vger.kernel.org>; Fri, 01 May 2020 01:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=4B5u/14W79dzX3lIvWHIdGrSXjat9puEWoijWkPjwhk=;
        b=vWmkQ7e+56Ib/5HWX+T98iMgh7UvsH8OZOo7WWJF95V5cbj66loS8/jXlvUSb+P8wq
         rQAn79LxIao3t2AqAeLIG9DJR2XpXn74dpK7rsbhvpS4B2LObXtvUuz48Mvlt8elU8oO
         +3BxsZuk5X9SR94SvouB/sqv5/jAeiQDOnnAA+GgFV9k/JMFOD25NmFJiMGaHYNySHIQ
         tBfeNABb8gx/tW+BARw7DZWhWChtROAwGweV1GarMNhaX6g7qQuHa8mTTKx10WEifj3g
         ZM1u3Hi53zJXu8UzWZMy+v1fU5Juu//uLQdJjrwPj0tKw79HLAV7HHVWvjkwiqFF1CoF
         ixcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=4B5u/14W79dzX3lIvWHIdGrSXjat9puEWoijWkPjwhk=;
        b=K2eTKlsPAA/hDUdttauyQLzIZWQOsL2xPlSo5x6ZWhSz6YZLQGf4ay2ueJ9RuBuN2J
         B1hu+kvlSQ033W5seSoqy3N4xm04+lYnY9j3aX7jQko99bh23HkvXV8wcb0paUP+5nOS
         xBMHh+0D2lmrdfss4OXmNV7Z7ZlmFY0v6YDVcmQiaZ1cXfye1bySb7iRp4VN9Rf6zt8l
         T8ywJCkTrqIEBur9sjFVwzmhoWnTBqjnIzkpxea6U0bRVESCkAhz1Vf6aiGLyL0JuqZp
         PMgN5aDEwBCpY4vL+MI47F287pdotVJqAysC9EE6JmlnqQ7uIfPOyR6FXqHJXi/RuSsy
         fGyg==
X-Gm-Message-State: AGi0PuaeKcsn7mFm7CPDPJzf6alM4Dc8t+zW0hfBpLE70Zc3CcklbTKt
        QSoS1PInnQU5zcnGvt3cSO/8qy4J94JTrjh/wrfvMQ==
X-Google-Smtp-Source: APiQypKBiA0G+v57CRr2lVRZTqFDIuvgBZbD3EfJ4TwyV6njQ2znBmcD/gn1RQCVL6A8oRSxKR/DWTnimYvp0oeuKSU=
X-Received: by 2002:a17:906:5fd2:: with SMTP id k18mr2125835ejv.243.1588321790377;
 Fri, 01 May 2020 01:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064802.GA30678@Debian-50-lenny-64-minimal>
 <e4a94746-86b5-de7c-73cb-3c939910a404@gmail.com> <20200501071339.GB938@Debian-50-lenny-64-minimal>
In-Reply-To: <20200501071339.GB938@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 1 May 2020 10:29:39 +0200
Message-ID: <CAKgNAkiASdoFzApSyGNUP4hG+=WSTe8mGJzNfgFkuj8Zg2MtsA@mail.gmail.com>
Subject: Re: Errors in man pages, here: getgrent(3): Understanding
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 1 May 2020 at 09:13, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 11:54:57AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > explain|reword "broken-out" or skip it
> > >
> > > "The B<getgrent>()  function returns a pointer to a structure containing the "
> > > "broken-out fields of a record in the group database (e.g., the local group "
> > > "file I</etc/group>, NIS, and LDAP).  The first time B<getgrent>()  is "
> > > "called, it returns the first entry; thereafter, it returns successive "
> > > "entries."
> >
> > I don't really see what the problem is. "broken-out" seems
> > reasonably clear to me. I'm ignoring this for now.
>
> I then assume that it is a synonym for "extracted" or "taken out".

Yes. The fields are "broken out" from the "complete" record in the database.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
