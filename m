Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 470292DB806
	for <lists+linux-man@lfdr.de>; Wed, 16 Dec 2020 01:57:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726306AbgLPA4L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 19:56:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725275AbgLPA4G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 19:56:06 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89805C0613D3
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 16:55:26 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id m12so44183224lfo.7
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 16:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uQk7Me9L6JQEViwMKHK4s1W79BskuSvqSCotSZKyK7s=;
        b=Rdv6r1sJKTWN/kV8kd4ZFiG+HqLd4HL5W/5psvTlYYi+13FaL+oNKTG5usrScHYBxb
         LE9leDS+K9oYxrG3Ihj01Nwoeov3emncoTT1wM9oh+i4Ln1pGRIdQNgmgUPqPniGK9pa
         IN3Mf7/Q0KAV7olZl10qnGo7UyDJKrEwLudZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uQk7Me9L6JQEViwMKHK4s1W79BskuSvqSCotSZKyK7s=;
        b=OCuP0zCm+2dSOf4FX21q09CxyX0gHs/+VH4q3bfGAsfUkfwn1OCcjdE0BEvYah17BF
         XCF5JiEye2gPp48VOxWhL4z80/HjK9SGDVV79gm70zUF0qxq7AmgdwTxEdxzCvO7jN2x
         6RerbHQBT2uiNdihf2PElkyBmjBhDVq+zOZG/XpCE6cbwsk7uR/4dBCv/5uccjI/8gNA
         NsGUwasRysbb3mwYLWEwMIHCkqO8fsobNkdcsT49TvoYN471VDYX40ZwmA7hUvSs8TCX
         MwHa/n/a99rFT54mbO8PlaymloS2d7BSAyCVn74TtlMCyxLHFbhdfbTd5fR+3r9u0xaS
         U1rw==
X-Gm-Message-State: AOAM531ZkyQh+LEXOfYwv4QEp4iiLGGZR76GlbdCUhB5X+RQvzHrfZuQ
        NIeDcEVU3nZYvoo3WhneyanW0i/zlqmOLQ==
X-Google-Smtp-Source: ABdhPJxCRBaWce4bYwNMaqj8VPCZ5DkD/QfbbUkmse5t4l6UDpUVxQ1O+cXobCiURdV3e+LuPpPIWA==
X-Received: by 2002:a05:651c:1027:: with SMTP id w7mr13162819ljm.297.1608080124538;
        Tue, 15 Dec 2020 16:55:24 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id k2sm26996lfo.256.2020.12.15.16.55.22
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 16:55:23 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id o19so18521822lfo.1
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 16:55:22 -0800 (PST)
X-Received: by 2002:a2e:9d89:: with SMTP id c9mr14176203ljj.220.1608080122327;
 Tue, 15 Dec 2020 16:55:22 -0800 (PST)
MIME-Version: 1.0
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
 <b416e106-c11d-1471-de3d-fb9d5b1b6747@softwarecrafters.com>
 <223477a0-0b92-3a01-46bb-c06f7d5d5901@gmail.com> <0df0ac9e-e881-88c7-cea9-5154077c95a9@gmail.com>
In-Reply-To: <0df0ac9e-e881-88c7-cea9-5154077c95a9@gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Tue, 15 Dec 2020 16:55:06 -0800
X-Gmail-Original-Message-ID: <CAHk-=whppaJf=UoODaUP=tBjc9FjwSOX3hLBhZRgaGQKSKVW4A@mail.gmail.com>
Message-ID: <CAHk-=whppaJf=UoODaUP=tBjc9FjwSOX3hLBhZRgaGQKSKVW4A@mail.gmail.com>
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Ted Estes <ted@softwarecrafters.com>,
        Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>, Jann Horn <jann@thejh.net>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Oleg Nesterov <oleg@redhat.com>,
        Markus Gutschke <markus@google.com>,
        Roland McGrath <roland@redhat.com>,
        Andreas Hobein <ah2@delair.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Dec 15, 2020 at 2:48 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> 1) Remove that paragraph, as if that behavior had never existed.

If it's been 15 years since that paragraph was relevant, I think just
removing it is the right thing to do.

             Linus
