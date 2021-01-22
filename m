Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A31202FFDE6
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 09:10:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726555AbhAVIJa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 03:09:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726560AbhAVIJM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 03:09:12 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 502C8C06174A
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 00:08:32 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id g46so830759ooi.9
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 00:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=pSJwiiNrLkdL1T5os9Ms4IPlybeWsZhsttZkjTlQxN8=;
        b=M1iCPqYCna3HIMOAlSlg8C3Hx+m0+HyxIVuD0lnUOEr6Bbs7MC3Z1hYSIJfWQZrUiv
         eCeE2WRmT5dpvTz9C1kBJtXTwqkSd0iEnhvEh6+y6ttv7Ucs6NCM4n7+uPuszIITIBKq
         b7FYwxE5J5rKO++jZnw8vmaSNQjJblIL0CAtNt6oDsLGoMASMKZeB43iNlCH+ngtVrX3
         dqG9Xp8DVODd7bk0+XqEEcQ8tcw4667EF5j2CEL8nmw1R+xpiaKonmk8K73WC6rmIv9w
         KjuauMmeKNot54P+7RCiudcLJ2GNKTXnnFxhFj5+icDTShAyNKdFYYsDMuey59kea+M+
         8Czw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=pSJwiiNrLkdL1T5os9Ms4IPlybeWsZhsttZkjTlQxN8=;
        b=HWhHBsJG4G3EFON8gTgB4WQmcf9clO0QFHadTZeYo3bkISgFkiOiGqiC43QUZT8gZL
         NnP0Czo/84OLxURATXvg/yTv8djj5rfFR9rar+zDzbNsql4UgbLWm25s9y3WSuAcl6Z8
         ZD3wf5XVoHZ97pdB0MzSFW5MYgJAA4rBwyY4CTmiiKbA9MFlNiQAu6vHA4jbPo9Xkhmn
         TktqH3Ke7iHle0ee/GX5V7QvinpyXjc59lzA7ZmiLwD41lRBFoZEH+VxWejMsBmqop/N
         5bfo+GDoXIM9ddStIRT7ADKIuqKtacP0jucYNrlRnaY5gapKBNToWndUQkL5tyaToRSG
         p3Aw==
X-Gm-Message-State: AOAM5313u3hBLqIQVwOowW8orTUmFXu3tSeVkBpCdPX9uSLPNrkgkZB1
        O1+QY6lFYnGJEPL8tqebFhRDQaj6tZPxLDNkHnQ=
X-Google-Smtp-Source: ABdhPJwRYxz73a/7+o6DUQcjhBOzWtaFxCorNfYIYP3lKbTy7wZ02GYpPDkAv5DWihkASUW+hX6USlNWuRkE4971BJo=
X-Received: by 2002:a05:6820:3c8:: with SMTP id s8mr2928234ooj.14.1611302911716;
 Fri, 22 Jan 2021 00:08:31 -0800 (PST)
MIME-Version: 1.0
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
 <20210121061158.5ul7226fgbrmodbt@localhost.localdomain> <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
 <10486111.L9TUC2MGYt@pip>
In-Reply-To: <10486111.L9TUC2MGYt@pip>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 22 Jan 2021 09:08:20 +0100
Message-ID: <CAKgNAkgiF0nbS5Sg3AJNpFgfL-O=cuk7BPB3j3QsKV-ajsVwMA@mail.gmail.com>
Subject: Re: Escaping hyphens ("real" minus signs in groff)
To:     Deri <deri@chuzzlewit.myzen.co.uk>
Cc:     groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Deri,

On Thu, 21 Jan 2021 at 18:42, Deri <deri@chuzzlewit.myzen.co.uk> wrote:
>
> On Thursday, 21 January 2021 11:03:13 GMT Michael Kerrisk (man-pages) wrote:
> > > And I mean copy-and-paste not just from PDF but from a terminal window.
> >
> > Yes, but I have a question: "\-1" renders in PDF as a long dash
> > followed by a "1". This looks okay in PDF, but if I copy and paste
> > into a terminal, I don't get an ASCII 45. Seems seems to contradict
> > what you are saying about cut-and-paste above. What am I missing?
>
> If I do:-
>
> echo "- \- \[fi]"|groff -Tpdf | okular -
>
> I see a hyphen, minus and fi ligature. Copying to a text document gives hyphen
> hyphen f i. The reason is because gropdf adds a ToUnicode CMAP entry to fonts
> which used the text.enc encoding when created with afmtodit. You can see a
> difference if you run:-
>
> echo "- \- \[fi]"|groff -Tpdf -P-u | okular -
>
> Which prevents the CMAP entry, and when you copy to text the minus unicode cha
> character is seen. (On my system the fi ligature is separated into f i still
> but I suspect that is KDE being "helpful").

Thanks! That's a helpful explanation!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
