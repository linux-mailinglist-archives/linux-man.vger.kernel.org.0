Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9DB3D17FF7
	for <lists+linux-man@lfdr.de>; Wed,  8 May 2019 20:42:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726915AbfEHSka (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 May 2019 14:40:30 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:35838 "EHLO
        mail-ed1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727196AbfEHSka (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 May 2019 14:40:30 -0400
Received: by mail-ed1-f49.google.com with SMTP id p26so5156057edr.2
        for <linux-man@vger.kernel.org>; Wed, 08 May 2019 11:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=AWfJ8MGVXuGFIjr+PanZTpWsh7IS8uu6eKvZ/jr0cfE=;
        b=T72zOXVlR3dMoPm8scBz9cf9U3QRefa4bDaDMdqyW2nM+LYMuZRBYH5027k0ST7SN6
         Lbqm9OEPvSs4XN4zqVsVKpYDw0nJbA53AQraFj/E23h9WVoQOAk13DQM7eOTjzXABGnK
         S2ZDI9jyutPuyJ3jx05ZA1japN4Wp3YxNWEVSUYjTsInsk6cxXA+4S60MgQPRIvn3wcx
         yh/akiOTc17ctZTml4nQnHgIjm4sm58wOgfHQT3lOdtBppP5V+CBrWXN2P7mG34HPLdz
         bhlTJo2KWvzzjcsb4EvVztr4ei7+X2vWIMOx+vUF9j4P6fOmKqc5FJ8vRgbjuuN3F8a9
         fJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=AWfJ8MGVXuGFIjr+PanZTpWsh7IS8uu6eKvZ/jr0cfE=;
        b=J7kKe806AOk8GPiotgLYn/h8d2c7o0aBjryx0LhF+qarfazoNT8P/AZUHC2rvdb24V
         OgDFXBUe4pvDqUaZP1UWQsjzlj7LmHS0Op6MuGqmTKos09+rJF7pBMwPOn6cJCl/0fHw
         jtMGWuSfSfg9FZfxB3zyXPuv8h1k7KNBtBVcYgItYPC6xBnBJiPQ9iqASUUKampZssHp
         YmuyFLzEKfHdQ4u0Bs4CzLzJ82OUjpeXq1wSSaOfUy3HGRZXG9Qp0xNbKBMUQprpEecx
         21Z9koYgIxz97+I/0Euyh26ieR+fgdeF3aW+nIJu1qFTBHY9CqznLygcady9MwyRS1Ch
         p/IA==
X-Gm-Message-State: APjAAAX9gGT1szzEdFNQBoC/qhf1kSTuRG/6damWZ+NJ+oKeZuSUAqms
        5+SIOtOobN99gto+ZY80zuA9S5AaRacI5jYEvTF5Yw==
X-Google-Smtp-Source: APXvYqzQuv0h2VpveuovySgtyNzIYz3FrjNRZ3Z0F7BUYq62FBhWjPc+Qfb3TbPSY5x+CVsHrstzG0TFjFjpCSAMMhQ=
X-Received: by 2002:a17:906:c782:: with SMTP id cw2mr8131848ejb.102.1557340828737;
 Wed, 08 May 2019 11:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <e2ace30b-b8ca-6dc5-a0d2-b5e56bfc8fad@jguk.org> <20190319153117.rti2udmkfvileho3@jwilk.net>
In-Reply-To: <20190319153117.rti2udmkfvileho3@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 8 May 2019 20:40:17 +0200
Message-ID: <CAKgNAkgY9qzAa5jZiKSxdJDwqzLDPfeOme5tHPrM+n6FEyhimw@mail.gmail.com>
Subject: Re: REALPATH(1)
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 19 Mar 2019 at 16:31, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Jonny Grant <jg@jguk.org>, 2019-03-19, 11:54:
> >Could the SEE ALSO be hyperlinks?
> >
> >http://man7.org/linux/man-pages/man1/realpath.1.html
> >
> >SEE ALSO         top
> >       readlink(1), readlink(2), realpath(3)
>
> It's a known problem with coreutils man pages:
> https://www.spinics.net/lists/linux-man/msg13234.html

Yep. And this annoyed me enough that finally I've made some tweaks to
catch at least some of these xrefs in my scripts. So, there should be
some improvement in the next refresh of the online pages.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
