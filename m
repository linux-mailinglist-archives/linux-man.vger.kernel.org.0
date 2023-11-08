Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 224A97E4ECE
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 03:12:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbjKHCMx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 21:12:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbjKHCMx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 21:12:53 -0500
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3579810F5
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 18:12:51 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d9cbba16084so6312294276.1
        for <linux-man@vger.kernel.org>; Tue, 07 Nov 2023 18:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699409570; x=1700014370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n5p2OtdLUcANRKer4MWCXPlJMn/IrNaZ5cJ3bvxxJII=;
        b=BgB6XHeQfsXtMKO6EmU5J9RPYiUorrhh6rdKdLDXgAA8SLtkM9cjrV/ZQKFP4zSgBa
         CvLSY/zKKfjwMYIOnkIjqOTJjXrWa4bz9fnFdHKyX/IspKWyW/AtWS/+2ye4XwX1zah0
         3DTFIUOdjWO43xb32OWOEEJsWz4GUEPBO+RCz9uTKZV59IkC+Zg3DEswdz9QX/KV4vkR
         tjP4dwVTWiQ3bxgXwVsMQpgzgKl2EZbJ7dV3UzHUYMScOC+R9hQy+T6N1VCktFL0y4l0
         zLxHcQCdJSFdHeoV7oHs++uW7oXbpX6kE9unFWxZOo+EPXtsYrvzE23XzuxGes1wC0W5
         Lv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699409570; x=1700014370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n5p2OtdLUcANRKer4MWCXPlJMn/IrNaZ5cJ3bvxxJII=;
        b=Zp2OT/ofyRCINpAed9iBYg+UlCG8vXNTd4E8K4LkimfGShqnl7C0+ojN6Qz4nHaqvx
         FoOnCLg6Vscb8YGWs5BU2twjiiNprynW0ZoJUJjadDp2q3v3+NBeos5kBaFBdK43fC/p
         GXC5wVeFM+CRCTv42t6NPozNztldrOoHuXr77tmqSrp2k8u2p60jNwgBx1L5PXqx4bQj
         BKaXYxLspgY9KsLWBHJ/ih6/2ZjzA+36gRt2Z/DpT9x+VZZMO109gRXetIHhB4fc4h5A
         OSDqWk9fAMNtP9gRHFquVWfu52zf7ejFCxnSsuJQN2cEC9db/bJ3F42dDV/RdEDZHJ2Z
         nDbQ==
X-Gm-Message-State: AOJu0YyINmYJGnSnqhhqZxTZ4bmZg26Syw5a6cJypH2lg3z3NDahsi3O
        E4EeAEWiKLXLIASWw3lcg5J3Pzl2NwW7Bg==
X-Google-Smtp-Source: AGHT+IGnWpmTYWJhk3VKCgmUna9zMZiT0Yv0iFakAyRRZuwMiS/6djYyA01y96gDMK/qwRh39ROylA==
X-Received: by 2002:a25:f80a:0:b0:da3:b6d5:8c1a with SMTP id u10-20020a25f80a000000b00da3b6d58c1amr593174ybd.65.1699409570286;
        Tue, 07 Nov 2023 18:12:50 -0800 (PST)
Received: from firmament.. (h198-137-20-4.xnet.uga.edu. [198.137.20.4])
        by smtp.gmail.com with ESMTPSA id o68-20020a257347000000b00da0abddeb02sm5905905ybc.34.2023.11.07.18.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 18:12:49 -0800 (PST)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Date:   Tue,  7 Nov 2023 21:12:37 -0500
Message-ID: <20231108021240.176996-1-mattlloydhouse@gmail.com>
In-Reply-To: <ZUo6btEFD_z_3NcF@devuan>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org> <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org> <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org> <ZUo6btEFD_z_3NcF@devuan>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Nov 7, 2023 at 8:21 AM Alejandro Colomar <alx@kernel.org> wrote:
> On Tue, Nov 07, 2023 at 11:52:44AM +0000, Jonny Grant wrote:
> > We see things differently, I'm on the C standard side on this one. Woul=
d any information change your mind?
>
> It's difficult to say, but I doubt it.  But let me ask you something:
> In what cases would you find strncpy(3) appropriate to use, and why?
> Maybe if I understand that it helps.
>
> Kind regards,
> Alex

Man pages aren't read only by people writing new code, but also by people
reading and modifying existing code. And despite your preferences regarding
which functions ought to be used to produce strings, it's a widespread (and
correct) practice to produce a string from the character sequence created
by strncpy(3). There are two ways of doing this, either by setting the last
character of the destination buffer to null if you want to produce a
truncated string, or by testing the last character against zero if you want
to detect truncation and raise an error.

I'm not aware of any alternative to a strncpy(3)-based snippet for
producing a possibly-truncated copy of a string, except for your preferred
strlcpy(3) or stpecpy(3), which aren't available to anyone without a
brand-new glibc (nor, by extension, any applications or libraries that want
to support people without a brand-new glibc, nor any libraries that want to
support other platforms like Windows with only ISO C and POSIX-ish
functions); snprintf(3), which has the insidious flaw of not supporting
more than INT_MAX characters on pain of UB, and also produces a warning if
the compiler notices the possible truncation; or strlen(3) + min() +
memcpy(3) + manually adding a null terminator, which is certainly more
explicit in its intent, and avoids strncpy(3)'s zero-filling behavior if
that poses a performance problem, but similarly opens up room for
off-by-one errors.

For the sake of reference, I looked into a few big C and C++ projects to
see how often a strncpy(3)-based snippet was used to produce a truncated
copy. I found 18 instances in glibc 2.38, 2 in util-linux 2.39.2 (in spite
of its custom xstrncpy() function), 61 in GNU binutils 2.41, 43 in
GDB 13.2, 1 in LLVM 17.0.4, 7 in CPython 3.12.0, 99 in OpenJDK 22+22,
10 in .NET Runtime 7.0.13, 3 in V8 12.1.82, and 86 in Firefox 120.0. (Note
that I haven't filtered out vendored dependencies, so there's a little bit
of double-counting.) It seems like most codebases that don't ban strncpy(3)
use a derived snippet somewhere or another. Also, I found 3 instances in
glibc 2.38 and 5 instances in Firefox 120.0 of detecting truncation by
checking the last character.

So these two snippets really are widespread, especially among the long tail
of smaller C and C++ applications and libraries that don't perform enough
string manipulation that it warrants creating a custom set of more-
foolproof wrapper functions (at least, in the opinion of their authors).
Thus, since they're not going away, it would be useful for anyone reading
the code to understand the concept behind how these two snippets work, that
the only difference between the strncpy(3)'s special "character sequence"
and an ordinary C string is an additional null terminator at the end of the
destination buffer.

In other words, strncpy(3) doesn't create a truncated string, but it
creates something which can be easily turned into to a truncated string,
and that's its most relevant quality for most of its uses in existing code.
Further, apart from snprintf(3), there's no other portable way to produce a
truncated string without manual arithmetic. Thus, I'd also find it
reasonable to highlight precisely why strncpy(3)'s output isn't a string
(viz., the lack of a null terminator), instead of trying to insist that its
output is worlds apart from anything string-related, especially given the
volume of existing correct code that belies that notion.

Or, to answer your question, "It's appropriate to keep using strncpy(3) in
existing code where it's currently used as part of creating a truncated
string, and it's not especially inappropriate to use strncpy(3) in new code
as part of creating a truncated string, if the code must support platforms
without strlcpy(3) or similar, and if the resulting snippets are few enough
and well-commented enough that they create less mental load than creating
and maintaining a custom helper function."

(As an aside, I find the remark in the man page that "It's impossible to
distinguish truncation by the result of the call" extremely misleading at
best, since truncation can easily be distinguished by inspecting the last
output character.)

Thank you,
Matthew House
