Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65CE97E67EF
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 11:26:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234209AbjKIK0u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 05:26:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234217AbjKIK0f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 05:26:35 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0185B384B
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 02:26:19 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50970c2115eso831007e87.1
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 02:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699525577; x=1700130377; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mwtnb2fKZ5MuJ98XSoHtg56chbpnKyurt5Qgwivm2Ho=;
        b=UGrcStVfWEvrOr4+4l6PQmV9M4Dxjpq4OMrSwuQnjbmyGAJyWCbCVOnl/9wNZT48hi
         hRl4YihtgeSY79q5TiNbZ75FO1kIvAX4kaLcQfv5xVQIglTCR4W/Hyxd9+Lney25cyCl
         UiYAYiMUBv/mojUPM2sR/wBPYdN3fgkbB5wB+ZAhoF+u91hJjwR7dZ90//gEOgmK7+IV
         gqFf1f+Vu9eAghbSSHsUDKEWreMDnObELdJxYN7VlLib0b5IsP1h4pmgS9jk5sptKRaG
         18uB2YYr1rtylD4vTOr9wzfevEQFuYsOY9pEUJCUrNH3qSt5PIfOPOmD5CJA3Tuv79pd
         o7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699525577; x=1700130377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mwtnb2fKZ5MuJ98XSoHtg56chbpnKyurt5Qgwivm2Ho=;
        b=s8c04TtMC1dq+ETRN7pb74Gk/wMJbC/ut2Lyg0q5X5o7n5WspP2nWpo/+TMk3Mrvct
         LTFJHOXtOuCHvICW0Y62R50l4l1Ne+ZX+FIIcXZn1C9rcxBZse8tMNQOQCPmi5d1nXQ/
         MEyHBhWl8Pan6rBTKu/7Yx9lBGVmuH6kS1rtYvLaMvNz1er+H7IBzWrRDtvw4E5i2svi
         W/joPHejlSyDAi8uLgpUzqnB30eyOQw9B5U9qlVVI0zc3wIbqX0SAGJs1kUXrZpwEcDc
         8KVJGYhpSbLcU3TFdOpzZQQK8+EQHLxGNlMlznTkGbiAa4m4Lz3mvZIedslk235C7eJt
         fHlg==
X-Gm-Message-State: AOJu0Yxx6KQDnOcDYQIdpU3IvAHma98L13lrMkZ6f3hllLRQheOYOKbN
        1ZJytW2MmIZ6YONyNuE65eAGBt/EgGBsiQS4qKk1DA==
X-Google-Smtp-Source: AGHT+IE/DEOMrgtB+iblPh4YefCIqUi6ZgndNR8XmrIbUGUa5C5bA5XEVV97dH2Py4WVjA8acdZF1OwNRjK3ImR6478=
X-Received: by 2002:a19:6514:0:b0:500:a378:db71 with SMTP id
 z20-20020a196514000000b00500a378db71mr915701lfb.57.1699525577019; Thu, 09 Nov
 2023 02:26:17 -0800 (PST)
MIME-Version: 1.0
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
In-Reply-To: <20231109031345.245703-1-mattlloydhouse@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Date:   Thu, 9 Nov 2023 10:26:05 +0000
Message-ID: <CAGNDjJug3o-MFykJ1nhxXD3U2GyO_PEm2gfXQucXmDm0o6zd9g@mail.gmail.com>
Subject: Re: strncpy clarify result may not be null terminated
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 9 Nov 2023 at 03:13, Matthew House <mattlloydhouse@gmail.com> wrote:
>
> On Wed, Nov 8, 2023 at 2:33 PM Alejandro Colomar <alx@kernel.org> wrote:
> > On Tue, Nov 07, 2023 at 09:12:37PM -0500, Matthew House wrote:
> > > Man pages aren't read only by people writing new code, but also by people
> > > reading and modifying existing code. And despite your preferences regarding
> > > which functions ought to be used to produce strings, it's a widespread (and
> > > correct) practice to produce a string from the character sequence created
> > > by strncpy(3). There are two ways of doing this, either by setting the last
> > > character of the destination buffer to null if you want to produce a
> > > truncated string, or by testing the last character against zero if you want
> > > to detect truncation and raise an error.
> >
> > It is not strncpy(3) who truncated, but the programmer by adding a NULL
> > in buff[BUFSIZ - 1].  In the following snippet, strncpy(3) will not
> > truncate:
> >
> >         char cs[3];
> >
> >         strncpy(cs, "foo", 3);
> >
> > And yet your code doing if (cs[2] != '\0') { goto error; } would think
> > it did.  That's because you deformed strncpy(3) to implement a poor
> > man's strlcpy(3).
> >
> >         char cs[3];
> >
> >         strncpy(cs, "foo", 3);
> >         cs[2] = '\0';  // The truncation is here, not in strncpy(3).
>
> That's indeed a self-consistent interpretation of strncpy(3)'s function,
> but I don't think it's borne out by its formal definition, which I was
> basing my reasoning on. The current Linux man page for strncpy(3) says,
>
>   These functions copy the string pointed to by src into a null-padded
>   character sequence at the fixed-width buffer pointed to by dst. If the
>   destination buffer, limited by its size, isn't large enough to hold the
>   copy, the resulting character sequence is truncated.
>
> Notice how it "copies the string": as your string_copying(7) says, a string
> includes both a character sequence and a final null byte. So I'd ordinarily
> read this definition as saying that strncpy(3) tries to copy src up to and
> including the null byte, but produces a truncated copy of the whole string
> if the destination buffer is too small. Thus, even if the destination
> buffer contains all non-null characters in the original string, then the
> copy has still been "truncated" in this sense.
>
> The ISO C definition, and by extension, the POSIX definition, make this
> interpretation even more explicit:
>
>   The strncpy function copies not more than n characters (characters that
>   follow a null character are not copied) from the array pointed to by s2
>   to the array pointed to by s1.
>
> That is, the terminating null byte is part of the copy, but not anything
> after the terminating null byte.
>
> So one can interpret strncpy(3) as copying a prefix of a character sequence
> into a buffer (and zero-filling the remainder), in which case you're
> correct that truncation cannot be detected. But the function is fomally
> defined as copying a prefix of a string into a buffer (and zero-filling the
> remainder), in which case the string has been truncated if the buffer
> doesn't end in a null byte afterward. It's just that one may not care about
> the terminating null byte being truncated if the user of the result just
> wants the initial character sequence.
>
> > > I'm not aware of any alternative to a strncpy(3)-based snippet for
> > > producing a possibly-truncated copy of a string, except for your preferred
> > > strlcpy(3) or stpecpy(3), which aren't available to anyone without a
> >
> > The Linux kernel has strscpy(3), which is also good, but is not
> > available to user space.
> >
> > > brand-new glibc (nor, by extension, any applications or libraries that want
> >
> > libbsd has provided strlcpy(3) since basically forever.  It is a very
> > portable library.  You don't need a brand-new glibc for having
> > strlcpy(3).
> >
> > <https://libbsd.freedesktop.org/wiki/>
>
> That's a nice library that I didn't know about! Unfortunately, I don't
> think it's a very viable option for the long tail of small libraries I've
> referred to, which generally don't have any sub-dependencies of their own,
> apart from those provided by the platform.
>
> Going from 0 to 2 dependencies (libbsd and libmd) requires invoking their
> configure scripts from whatever build system you're using (in such a way
> that libbsd can locate libmd), ensuring they're safe for cross-compilation
> if that's a goal, ensuring you bundle them in a way that respects their
> license terms, and ensuring that any user of your library links to the two
> dependencies and doesn't duplicate them. At that point, rolling your own
> strlcpy(3) equivalent definitely sounds like less mental load, at least to
> me.
>
> > > functions); snprintf(3), which has the insidious flaw of not supporting
> > > more than INT_MAX characters on pain of UB, and also produces a warning if
> > > the compiler notices the possible truncation; or strlen(3) + min() +
> > > memcpy(3) + manually adding a null terminator, which is certainly more
> > > explicit in its intent, and avoids strncpy(3)'s zero-filling behavior if
> > > that poses a performance problem, but similarly opens up room for
> > > off-by-one errors.
> >
> > More than the performance problem, I'm more worried about the
> > maintainability of strncpy(3).  When 20 years from now, a programmer
> > reading a piece of code full of strncpy(3) wants to migrate to a sane
> > function like strlcpy(3) or strcpy(3), the programmer needs to
> > understand if the zeroing was purposeful or just accidental.  Because
> > by using strlcpy(3), it may start leaking some trailing data if the
> > trailing of the buffer is meaningful to some program.
>
> I didn't see this as an issue in practice when I was reviewing all those
> existing usages of strncpy(3). The vast majority were used in the midst of
> simple string manipulation, where the destination buffer starts as
> uninitialized or zeroed out, and ultimately gets passed into a user
> expecting an ordinary null-terminated string.
>
> (One exception was a few functions that used strncpy(dst, "", len) to zero
> out the buffer, which is thankfully pretty obvious. Another exception was
> the functions that actually used strncpy(3) to produce a null-padded
> character sequence, e.g., when writing a value into a section of a binary.
> But in general, I found that it's usually not difficult to tell when a
> usage is being clever enough that the null padding might be significant.)
>
> In fact, the greater confusion came from the surprisingly common practice
> of using strncpy(3) like it's memcpy(3), by giving it the known length of
> the source string, or of some prefix computed through strchr(3) or similar.
> This is often then followed up by strncat(3) or similar, indicating that
> the writer clearly expects the full length to have non-null characters. But
> if the length computation is separated far enough from the actual call to
> strncpy(3), then it can become unclear whether the source is actually
> expected to have any interior null bytes before the computed length. (So if
> a list of alternatives to strncpy(3) is ever drawn up, then I'd suggest
> that ordinary memcpy(3) be one of them.)
>
> > > For the sake of reference, I looked into a few big C and C++ projects to
> > > see how often a strncpy(3)-based snippet was used to produce a truncated
> > > copy. I found 18 instances in glibc 2.38, 2 in util-linux 2.39.2 (in spite
> > > of its custom xstrncpy() function), 61 in GNU binutils 2.41, 43 in
> > > GDB 13.2, 1 in LLVM 17.0.4, 7 in CPython 3.12.0, 99 in OpenJDK 22+22,
> > > 10 in .NET Runtime 7.0.13, 3 in V8 12.1.82, and 86 in Firefox 120.0. (Note
> > > that I haven't filtered out vendored dependencies, so there's a little bit
> > > of double-counting.) It seems like most codebases that don't ban strncpy(3)
> > > use a derived snippet somewhere or another. Also, I found 3 instances in
> > > glibc 2.38 and 5 instances in Firefox 120.0 of detecting truncation by
> > > checking the last character.
> >
> > I know.  I've been rewriting the code handling strings in shadow-utils
> > for the last year, and ther was a lot of it.  I fixed several small bugs
> > in the process, so I recommend avoiding it.
>
> I can't tell you about your own experience, but in mine, the root cause of
> most string-handling bugs has been excessive cleverness in using the
> standard string functions, rather than the behavior of the functions
> themselves. So one worry of mine is that if strncpy(3) ends up being
> deprecated or whatever, then authors of portable libraries will start
> writing lots of custom memcpy(3)-based replacements to their strncpy(3)-
> based snippets, and more lines of code will introduce more opportunities
> for cleverness.
>
> (This is also why I was confused by your support for strcpy(3) on the
> grounds that _FORTIFY_SOURCE exists. Sure, it's better than strncpy(3) in
> that its behavior isn't nearly so subtle, but _FORTIFY_SOURCE can only
> protect us from overruns, not from all the "small bugs" that might ensue
> from people becoming more clever with sizing the destination buffer with
> strcpy(3). Also, if it were truly a panacea, then we'd hardly have to worry
> about the problems of strncpy(3) at all, since it would detect any misuse
> of the function.)

Matthew, thank you for sharing your information.

https://www.gnu.org/software/libc/manual/html_node/Source-Fortification.html

I do find _FORTIFY_SOURCE useful in a developer build, for testing, it
raises SIGABRT and we can get useful coredump. Without that macro, it
would likely still crash or corrupt. However, in my experience in
safety critical applications, we really need to avoid the crashes, so
we'd write user-space functions that do the same sanity checks (in the
same way that fortify does) and then propagate the error back to the
application to report the failure, and log it.

>
> Probably the only way to solve the cleverness issue for good is to have an
> immediately-available, foolproof, performant set of string functions that
> are extremely straightforward to understand and use, flexible enough for
> any use case, and generally agreed to be the first choice for string
> manipulation.

What's the best standardized function for C string copying in your
opinion?  They all seem to have drawbacks, strlcpy truncates (I'd
rather it rejected if it didn't have enough buffer - could cause
issues if the meaning of the string changed due to truncation, eg if
it was a file path). Other alternative functions aren't widely in use.

Kind regards, Jonny
