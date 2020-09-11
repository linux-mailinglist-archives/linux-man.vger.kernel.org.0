Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9C32265F8A
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 14:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgIKM1o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 08:27:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725784AbgIKMVN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 08:21:13 -0400
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com [IPv6:2607:f8b0:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47E58C061573;
        Fri, 11 Sep 2020 05:21:12 -0700 (PDT)
Received: by mail-oi1-x244.google.com with SMTP id w16so9271714oia.2;
        Fri, 11 Sep 2020 05:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PAY5e79HIyPiP3CUcve1Tj4nEV9yBhSTgHOjkBA3dK4=;
        b=CB8CyjFbMIQqXATVVkWH25mTl8jijugrT5o9xJKnQCHb2mqLV4yiSmAkIgaqYHcSgQ
         d/FEp57R++sC8yO8e/85jdPE10a66I5T2tA6wO05ecu22toQhzelRIa8woazTmWqBusf
         B6YTpyJlmKHfeSAlO4Z8hDTchu5F0euZnRLVtT42zFR/5/omZnrwUxKSj7VdC/Y1R9Qi
         HFo8F9t9T93qYLRtuMEQQBagwLMcz6AP3rs7wjAit320NIk9dCSyqpAr6K285q8fI/YP
         MzhTBCvZJLP6GmfDUZpRpvxmpVKAimxx2Ua4jIQVP6f0qkW+GKq2VHimDBqXXI9XfhCM
         lHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PAY5e79HIyPiP3CUcve1Tj4nEV9yBhSTgHOjkBA3dK4=;
        b=AIhfYIthK96HAphXs/b2ahs4KpoVvrRovaV90LtAH8zDZlOduPqvRPwP2rc15039P7
         wywFRva9bXp9TMDfArF5wuO5aPjJ3ISdmxHOqH83InpG/E9Hp9bvAsBYC6ZKH/ytBEMn
         xPabZyOqbkxs+tsp5J0LYiYy9bgCNLb3uzQiiY3X9wEof64N5YEMrM1PHIXiqXOysSlM
         gT7cu0SA0mH0UiS8Q6sBaY11WoFM3s6wGdfvxf0FJaSA3mq7A2SUAR77HVnnAr9QfFH5
         seMmALJhEedb1jrYOZSn/U/O5OxDEvgwiBTUP+n9eb3f7ljo8f2VoSenTo4KuIQlQ5z8
         w+qg==
X-Gm-Message-State: AOAM532/v2gVCNekwR0x3hxeNeqirQ6ok0SIUhcFx6WjJ53EfAlvRdfk
        7JoYhrHqC8r1IMUt8JTzwmZUIaOWkYCKEOIOxRM=
X-Google-Smtp-Source: ABdhPJzmkHJZlB6cVPx57xni1maCEZAkiIuTYiKwgIwUl+YW7wmqwby9Wyix2LyI65YIMAEfnbLXlbmr0OCTP2CrWGY=
X-Received: by 2002:aca:ec53:: with SMTP id k80mr1045219oih.92.1599826870993;
 Fri, 11 Sep 2020 05:21:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200910210059.34759-1-stephen.smalley.work@gmail.com> <20200911092320.GA1302235@horizon>
In-Reply-To: <20200911092320.GA1302235@horizon>
From:   Stephen Smalley <stephen.smalley.work@gmail.com>
Date:   Fri, 11 Sep 2020 08:20:11 -0400
Message-ID: <CAEjxPJ5j4vHMdH9TC501Q1yFtHoYS1d3zibFr-3BJ0QSdMgAgA@mail.gmail.com>
Subject: Re: [PATCH] socket.7,unix.7: add initial description for SO_PEERSEC
To:     Simon McVittie <smcv@collabora.com>,
        James Morris <jmorris@namei.org>,
        "Serge E. Hallyn" <serge@hallyn.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        LSM List <linux-security-module@vger.kernel.org>,
        SElinux list <selinux@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Sep 11, 2020 at 5:23 AM Simon McVittie <smcv@collabora.com> wrote:
>
> On Thu, 10 Sep 2020 at 17:00:59 -0400, Stephen Smalley wrote:
> > +For SELinux, the security context string is a null-terminated
> > +string and the returned length includes the terminating null.
> > +Other security modules may differ.
>
> We discussed this interface a while ago when I was setting up dbus to
> use SO_PEERSEC. It would be really useful if the man page documented
> what callers can and can't expect from an unknown LSM, so that the
> author of the next D-Bus-equivalent doesn't have to turn up on the
> linux-security-module list and annoy maintainers like I did.
>
> Perhaps something like this?
>
>     The security context string may include a terminating null character
>     in the returned length, but is not guaranteed to do so:
>     a security context "foo" might be represented as either {'f','o','o'}
>     of length 3 or {'f','o','o','\0'} of length 4, which are considered
>     to be interchangeable. It is printable, does not contain non-terminating
>     null characters, and is in an unspecified encoding (in particular it is
>     not guaranteed to be ASCII or UTF-8).

Works for me.  Do the security subsystem maintainers concur?
