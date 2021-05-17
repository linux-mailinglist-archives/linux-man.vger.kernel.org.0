Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58623383A83
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 18:50:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241500AbhEQQvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 May 2021 12:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239133AbhEQQvZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 May 2021 12:51:25 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 594F3C06129E
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 09:38:14 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id p20so8018842ljj.8
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 09:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=NxbmURHmcXi1qRcY/aOXbFu+jbJxYzjaEu4gXGQLKx4=;
        b=eECzA33M8JU6tIPkoqOpeurw5qUEarai3KcLpFahE4nIoW7toJBMrm+4GylF8KUKDU
         syP5zr3Ii6mjy3FGJgLNwGr4kdrMycRNnnbpc85X2BQb9UiS+l/JywEcdo7ujUURw1PL
         H8qCxG8RDd4XAC84bIE1DAQDZT7hd8fVmxK0NDEq4Mp4DvLINiVodgfo98+XoZTS/Klb
         iFJWqWI8sloKJ7DcI5ULlZ6qG0mEk37x2ZE9IkiiufiT2FA2JEz3LtUqwhI9U7NEFES4
         Cr3OTpUlhn9vhhQuoHagjyAJEAiooWBuBVJ+1+uERUdzXxNcibMcsP3IvFEbgf4hutyw
         YvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=NxbmURHmcXi1qRcY/aOXbFu+jbJxYzjaEu4gXGQLKx4=;
        b=fZxEDCRMzvCdX4466wyB3GIpL46S3ObMqPmBQEmla97uoGBRW66DTppuRB19zIrB1F
         t94hfNyyD15DUauQHTY0k6V6z116vcdC6Y2IQHeEulx9ULezTaVB3PGhm1wqYDh9SvSW
         mm5Uml/0ru9YfIXsDLsEagbwivv8++Dx7Os6ZMO8L+mONPfd4NSg4nr7TmXmp72LFZUG
         UCLusyVaI8200956gIL+eS7UE5MEJyWmak87YG5OCszOmLsFj5hCby+7/IFMFVFURB73
         ffXUVr8v1jSR8wF96VD2Q0/NW6wc82BX6HvzKJ1eeYVZQ6+fqSk6xy/OB44RLDqqWQfW
         Ajzw==
X-Gm-Message-State: AOAM530jeldDiehqPFrlnB6pj7PWxuDVhvKT+/lIgfa3ptqZpEMA2o8D
        WDd6IHdPfVuO0JpNRnokel//BFw7U5zoN5oRpiQ/+omxfqg=
X-Google-Smtp-Source: ABdhPJyeEpFuaMLKC9WCXkv0nhLbFei27ftv0Nz2S7uVnTCQA7R5eNbytmdK4bvv19Zpkxcbt632eP9dXIVy4sFkWPs=
X-Received: by 2002:a2e:91d1:: with SMTP id u17mr64846ljg.279.1621269493038;
 Mon, 17 May 2021 09:38:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:122:0:0:0:0 with HTTP; Mon, 17 May 2021 09:38:11
 -0700 (PDT)
In-Reply-To: <20210517025022.wgjbt6esup7crgbo@localhost.localdomain>
References: <CACRhBXNqafUZm_Tk4+GyK4hrEnmS8F_e=s_kwVMeX0utvOHkzQ@mail.gmail.com>
 <20210517025022.wgjbt6esup7crgbo@localhost.localdomain>
From:   Dave Kemper <saint.snit@gmail.com>
Date:   Mon, 17 May 2021 11:38:11 -0500
Message-ID: <CACRhBXNpg8JTwQJdQnSo+X-+0BPsFrdttL9B7GTN16XUpECPLg@mail.gmail.com>
Subject: Re: getting more out of man pages with less(1) (was: [bug #59962]
 soelim(1) man page uses pic diagram--should it?)
To:     groff@gnu.org, linux-man@vger.kernel.org
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        =?UTF-8?Q?Mario_Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/16/21, G. Branden Robinson <g.branden.robinson@gmail.com> wrote:
> At 2021-05-16T20:29:30-0500, Dave Kemper wrote:
>> less's default is for searches to be case-sensitive.  Its -i option
>> (which can be given on the command line or while less is running) is
>> what activates the behavior described above.  A user or a distro might
>> make -i the default in their environment (I do) through the $LESS
>> environment variable or an alias, but that isn't less's out-of-the-box
>> behavior.
>
> On my Debian buster-based system, less(1) behaves that way, but $LESS is
> not defined in my environment and I don't have a shell alias or function
> set up.  Checking the source package, I don't see patches to turn -i on
> by default.  Baffling!

Maybe less's build system has a switch to compile in a different
default?  Maybe this is a recent change?  Maybe I'm completely wrong?
I haven't looked at the source or built it myself from github; I'm
going by the behavior on my systems, behavior I've observed on other
systems, and the wording of the man page (which documents "-i" to
invoke case-mostly-insensitive searches rather than an option to
switch to case-sensitive ones).
