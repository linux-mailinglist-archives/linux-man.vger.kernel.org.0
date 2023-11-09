Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C00D27E6282
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 04:13:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229923AbjKIDN4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 22:13:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbjKIDNz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 22:13:55 -0500
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7DB26A1
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 19:13:53 -0800 (PST)
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-7a69a1b51baso39330239f.1
        for <linux-man@vger.kernel.org>; Wed, 08 Nov 2023 19:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699499633; x=1700104433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MBZSUGyj+KDsZ3O1Zz9fZV1AJMsYLrs2apU+jlS6h4=;
        b=UOOAiQibFba7jnMpOxjuF6+40az7sM9lp1tUkQsGIuUuPOmAKy/Qax/wy75cEZs1Xj
         5NXOXtWu/vLfYRGsBLK/Y0cVhNLz6MDWbvmuNDjFDzAdyUyLj3/4plYlfz18L88eqAKH
         kV5MSM6v63rD9yPtXC1rNSpz7g3NGBQ2BHemI0Byg2sbbfLWfAO9cOmzEbCiWntVmMbC
         8eXSXeLRaxyZSfPVLIw8e+G0+iChd0/G1JX/D1g/WIRCHFC7K7nrLktgESbQAYmgjEHS
         m3KK8dIIDi2V1r/S86Owjv6oD+/iOI7aYks79UhalS5m8PCxukEFjmSdejnFfT35u7Oh
         5S7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699499633; x=1700104433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MBZSUGyj+KDsZ3O1Zz9fZV1AJMsYLrs2apU+jlS6h4=;
        b=pPhcPc7u0dua5psA18Z0oGBXkPnIcTVMpSWtKgyglrUV2qJ9R4mQGCf1ZoRLU064Dl
         IDJnjelS3yVhi8qhQ0ymUT7kFxm7BJF3EA6Rxo3JsY4FIDEXEaGx3auGGDhU+WqHnf+A
         VQp42HyUNlYoeVJJc93BsVhtNuENZXcqOao+T18VmuAusXFcOUSAMp0soYKI6C3zvHXJ
         sDcFM+aEGj3sKvq+YLFfZPGCYyg0/mUA+rpcxfzJpLRGJEGe8r9nMJ/sv6CC9SLzbhwp
         nrh411N7TUFAIF63YQcsPddPvMVifKSh33NHu+BcMTR7BCMg1aMeh8CI8/S0elwqJxpw
         gDfQ==
X-Gm-Message-State: AOJu0YxxUkuqOY9JWgSCzFtNIaToxV0Ye7PlSQVzwdDYKv7aAqDj6O5E
        PzRaOPhAf6pL0+aYxk0O2TmmeVKaLlTKlA==
X-Google-Smtp-Source: AGHT+IFYHtFCRRheM5IBjKvZ/+ib9v11uFsy1mDwGl1f+Bknjoe6ZDNm+kQjsxyKNa099nwnG7SrqQ==
X-Received: by 2002:a05:6e02:20ed:b0:359:4269:e0ce with SMTP id q13-20020a056e0220ed00b003594269e0cemr3450964ilv.15.1699499632431;
        Wed, 08 Nov 2023 19:13:52 -0800 (PST)
Received: from firmament.. ([45.87.214.195])
        by smtp.gmail.com with ESMTPSA id r2-20020a92cd82000000b00357f657cbbdsm4185475ilb.30.2023.11.08.19.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 19:13:52 -0800 (PST)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Date:   Wed,  8 Nov 2023 22:13:39 -0500
Message-ID: <20231109031345.245703-1-mattlloydhouse@gmail.com>
In-Reply-To: <ZUvilH5kuQfTuZjy@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org> <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org> <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org> <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Nov 8, 2023 at 2:33 PM Alejandro Colomar <alx@kernel.org> wrote:
> On Tue, Nov 07, 2023 at 09:12:37PM -0500, Matthew House wrote:
> > Man pages aren't read only by people writing new code, but also by peop=
le
> > reading and modifying existing code. And despite your preferences regar=
ding
> > which functions ought to be used to produce strings, it's a widespread =
(and
> > correct) practice to produce a string from the character sequence creat=
ed
> > by strncpy(3). There are two ways of doing this, either by setting the =
last
> > character of the destination buffer to null if you want to produce a
> > truncated string, or by testing the last character against zero if you =
want
> > to detect truncation and raise an error.
>
> It is not strncpy(3) who truncated, but the programmer by adding a NULL
> in buff[BUFSIZ - 1].  In the following snippet, strncpy(3) will not
> truncate:
>
>         char cs[3];
>
>         strncpy(cs, "foo", 3);
>
> And yet your code doing if (cs[2] !=3D '\0') { goto error; } would think
> it did.  That's because you deformed strncpy(3) to implement a poor
> man's strlcpy(3).
>
>         char cs[3];
>
>         strncpy(cs, "foo", 3);
>         cs[2] =3D '\0';  // The truncation is here, not in strncpy(3).

That's indeed a self-consistent interpretation of strncpy(3)'s function,
but I don't think it's borne out by its formal definition, which I was
basing my reasoning on. The current Linux man page for strncpy(3) says,

  These functions copy the string pointed to by src into a null-padded
  character sequence at the fixed-width buffer pointed to by dst. If the
  destination buffer, limited by its size, isn't large enough to hold the
  copy, the resulting character sequence is truncated.

Notice how it "copies the string": as your string_copying(7) says, a string
includes both a character sequence and a final null byte. So I'd ordinarily
read this definition as saying that strncpy(3) tries to copy src up to and
including the null byte, but produces a truncated copy of the whole string
if the destination buffer is too small. Thus, even if the destination
buffer contains all non-null characters in the original string, then the
copy has still been "truncated" in this sense.

The ISO C definition, and by extension, the POSIX definition, make this
interpretation even more explicit:

  The strncpy function copies not more than n characters (characters that
  follow a null character are not copied) from the array pointed to by s2
  to the array pointed to by s1.

That is, the terminating null byte is part of the copy, but not anything
after the terminating null byte.

So one can interpret strncpy(3) as copying a prefix of a character sequence
into a buffer (and zero-filling the remainder), in which case you're
correct that truncation cannot be detected. But the function is fomally
defined as copying a prefix of a string into a buffer (and zero-filling the
remainder), in which case the string has been truncated if the buffer
doesn't end in a null byte afterward. It's just that one may not care about
the terminating null byte being truncated if the user of the result just
wants the initial character sequence.

> > I'm not aware of any alternative to a strncpy(3)-based snippet for
> > producing a possibly-truncated copy of a string, except for your prefer=
red
> > strlcpy(3) or stpecpy(3), which aren't available to anyone without a
>
> The Linux kernel has strscpy(3), which is also good, but is not
> available to user space.
>
> > brand-new glibc (nor, by extension, any applications or libraries that =
want
>
> libbsd has provided strlcpy(3) since basically forever.  It is a very
> portable library.  You don't need a brand-new glibc for having
> strlcpy(3).
>
> <https://libbsd.freedesktop.org/wiki/>

That's a nice library that I didn't know about! Unfortunately, I don't
think it's a very viable option for the long tail of small libraries I've
referred to, which generally don't have any sub-dependencies of their own,
apart from those provided by the platform.

Going from 0 to 2 dependencies (libbsd and libmd) requires invoking their
configure scripts from whatever build system you're using (in such a way
that libbsd can locate libmd), ensuring they're safe for cross-compilation
if that's a goal, ensuring you bundle them in a way that respects their
license terms, and ensuring that any user of your library links to the two
dependencies and doesn't duplicate them. At that point, rolling your own
strlcpy(3) equivalent definitely sounds like less mental load, at least to
me.

> > functions); snprintf(3), which has the insidious flaw of not supporting
> > more than INT_MAX characters on pain of UB, and also produces a warning=
 if
> > the compiler notices the possible truncation; or strlen(3) + min() +
> > memcpy(3) + manually adding a null terminator, which is certainly more
> > explicit in its intent, and avoids strncpy(3)'s zero-filling behavior if
> > that poses a performance problem, but similarly opens up room for
> > off-by-one errors.
>
> More than the performance problem, I'm more worried about the
> maintainability of strncpy(3).  When 20 years from now, a programmer
> reading a piece of code full of strncpy(3) wants to migrate to a sane
> function like strlcpy(3) or strcpy(3), the programmer needs to
> understand if the zeroing was purposeful or just accidental.  Because
> by using strlcpy(3), it may start leaking some trailing data if the
> trailing of the buffer is meaningful to some program.

I didn't see this as an issue in practice when I was reviewing all those
existing usages of strncpy(3). The vast majority were used in the midst of
simple string manipulation, where the destination buffer starts as
uninitialized or zeroed out, and ultimately gets passed into a user
expecting an ordinary null-terminated string.

(One exception was a few functions that used strncpy(dst, "", len) to zero
out the buffer, which is thankfully pretty obvious. Another exception was
the functions that actually used strncpy(3) to produce a null-padded
character sequence, e.g., when writing a value into a section of a binary.
But in general, I found that it's usually not difficult to tell when a
usage is being clever enough that the null padding might be significant.)

In fact, the greater confusion came from the surprisingly common practice
of using strncpy(3) like it's memcpy(3), by giving it the known length of
the source string, or of some prefix computed through strchr(3) or similar.
This is often then followed up by strncat(3) or similar, indicating that
the writer clearly expects the full length to have non-null characters. But
if the length computation is separated far enough from the actual call to
strncpy(3), then it can become unclear whether the source is actually
expected to have any interior null bytes before the computed length. (So if
a list of alternatives to strncpy(3) is ever drawn up, then I'd suggest
that ordinary memcpy(3) be one of them.)

> > For the sake of reference, I looked into a few big C and C++ projects to
> > see how often a strncpy(3)-based snippet was used to produce a truncated
> > copy. I found 18 instances in glibc 2.38, 2 in util-linux 2.39.2 (in sp=
ite
> > of its custom xstrncpy() function), 61 in GNU binutils 2.41, 43 in
> > GDB 13.2, 1 in LLVM 17.0.4, 7 in CPython 3.12.0, 99 in OpenJDK 22+22,
> > 10 in .NET Runtime 7.0.13, 3 in V8 12.1.82, and 86 in Firefox 120.0. (N=
ote
> > that I haven't filtered out vendored dependencies, so there's a little =
bit
> > of double-counting.) It seems like most codebases that don't ban strncp=
y(3)
> > use a derived snippet somewhere or another. Also, I found 3 instances in
> > glibc 2.38 and 5 instances in Firefox 120.0 of detecting truncation by
> > checking the last character.
>
> I know.  I've been rewriting the code handling strings in shadow-utils
> for the last year, and ther was a lot of it.  I fixed several small bugs
> in the process, so I recommend avoiding it.

I can't tell you about your own experience, but in mine, the root cause of
most string-handling bugs has been excessive cleverness in using the
standard string functions, rather than the behavior of the functions
themselves. So one worry of mine is that if strncpy(3) ends up being
deprecated or whatever, then authors of portable libraries will start
writing lots of custom memcpy(3)-based replacements to their strncpy(3)-
based snippets, and more lines of code will introduce more opportunities
for cleverness.

(This is also why I was confused by your support for strcpy(3) on the
grounds that _FORTIFY_SOURCE exists. Sure, it's better than strncpy(3) in
that its behavior isn't nearly so subtle, but _FORTIFY_SOURCE can only
protect us from overruns, not from all the "small bugs" that might ensue
from people becoming more clever with sizing the destination buffer with
strcpy(3). Also, if it were truly a panacea, then we'd hardly have to worry
about the problems of strncpy(3) at all, since it would detect any misuse
of the function.)

Probably the only way to solve the cleverness issue for good is to have an
immediately-available, foolproof, performant set of string functions that
are extremely straightforward to understand and use, flexible enough for
any use case, and generally agreed to be the first choice for string
manipulation.

Unfortunately, probably the closest match to those criteria, especially the
availability criterion, is snprintf(3), which has the flaws of using int
instead of size_t for most sizes, not being very performant, and not being
async-signal-safe. Alas, it will likely remain a dream, given all the wars
over which safer string functions have the best API. But at least
strlcpy(3) has a pretty sound interface, if other platforms ever get around
to including it by default.

> > the code to understand the concept behind how these two snippets work, =
that
> > the only difference between the strncpy(3)'s special "character sequenc=
e"
> > and an ordinary C string is an additional null terminator at the end of=
 the
> > destination buffer.
>
> This is part of string_copying(7):
>
> DESCRIPTION
>    Terms (and abbreviations)
>      string (str)
>             is  a  sequence  of zero or more non=E2=80=90null characters =
followed by a
>             null byte.
>
>      character sequence
>             is a sequence of zero or  more  non=E2=80=90null  characters.=
   A  program
>             should  never use a character sequence where a string is requ=
ired.
>             However, with appropriate care, a string can be used in the  =
place
>             of a character sequence.
>
> I think that is very explicit in the difference.  strncpy(3) refers to
> that page for understanding the differences, so I think it is
> documented.
>
> strncpy(3):
> CAVEATS
>      The  name  of  these  functions  is confusing.  These functions prod=
uce a
>      null=E2=80=90padded character sequence, not a string (see string_cop=
ying(7)).

My point is isn't that the difference is undocumented, but that the typical
man page reader isn't reading the man pages for their own sake, but because
they're looking at some code, and they want to Know What It's Doing as soon
as possible. If they're getting directed around elsewhere with weird
warnings about "not a string" ("what's it going on about, I thought it was
null-padded?"), then I worry there's a good chance that they'll instead
bounce off the man page and try figuring it out some other way. And even if
they do follow the reference, then they might have difficulty understanding
the implications, since many people don't think of things in terms of
formal definitions.

> > reasonable to highlight precisely why strncpy(3)'s output isn't a string
>
> How about this?:
>
> diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> index d4c2ce83d..c80c8b640 100644
> --- a/man3/stpncpy.3
> +++ b/man3/stpncpy.3
> @@ -108,7 +108,10 @@ .SH HISTORY
>  .SH CAVEATS
>  The name of these functions is confusing.
>  These functions produce a null-padded character sequence,
> -not a string (see
> +not a string.
> +While strings have a terminating NUL byte,
> +character sequences do not have any terminating byte
> +(see
>  .BR string_copying (7)).
>  .P
>  It's impossible to distinguish truncation by the result of the call,

Yes, I'd be perfectly happy with something like that. That way, the
scariness is far more immediate ("the output might not be terminated!?"),
and thus more accessible to the typical reader.

> > (viz., the lack of a null terminator), instead of trying to insist that=
 its
> > output is worlds apart from anything string-related, especially given t=
he
> > volume of existing correct code that belies that notion.
>
> It is not correct code.  That code is doing extra work which confuses
> maintainers.  It is a lot like writing dead code, since you're writing
> zeros that nobody is reading, which confuses maintainers.

I am really not a fan of conflating the notions of "code that is difficult
to maintain" with "code that doesn't perform the task it is intended to
perform". When I think about incorrect code, I think about things like
setenv(3) that are just waiting to cause trouble in popular libraries built
and deployed today.

Meanwhile, "confusing maintainers" is a very subjective notion specific to
the both the code and the maintainers: if someone sees some code allocating
a fresh buffer, strncpy(3)ing a string into it, slapping a terminator on
the end, and finally passing the result into something clearly expecting a
string, then why would they be guaranteed to be sweating bullets over
whatever happened to rest of the fresh buffer? Especially given how
widespread the strncpy(3) + extra null terminator pattern already is.

Instead, it's code making use of strncpy(3) in a particularly clever way
that I'd find confusing, and in those cases, I lie the blame squarely on
the cleverness rather than the function itself.

> Also, I've seen a lot of off-by-one bugs in calls to strncpy(3), so no,
> it's not correct code.  It's rather dangerous code that just happens to
> not be vulnerable most of the time.

So will all the custom strlen(3)+memcpy(3)-based replacements suddenly be
immune to off-by-one bugs? Or will the vast majority of current strncpy(3)
users be willing to either restrict their platform support or add two extra
dependencies to their build process just to have strlcpy(3)? I'd hardly be
inclined to think that off-by-one bugs are a particular specialty of
strncpy(3).

> > Or, to answer your question, "It's appropriate to keep using strncpy(3)=
 in
> > existing code where it's currently used as part of creating a truncated
> > string, and it's not especially inappropriate to use strncpy(3) in new =
code
> > as part of creating a truncated string, if the code must support platfo=
rms
> > without strlcpy(3) or similar, and if the resulting snippets are few en=
ough
> > and well-commented enough that they create less mental load than creati=
ng
> > and maintaining a custom helper function."
>
> strncpy(3) calls are never well documented.  Do you add a comment in
> each such call saying "this zeroing is superfluous"?  Probably not.

By that standard, every call to a function that takes an output pointer and
returns the number of elements written (say, readlink(2)) would need a
comment saying "the remaining elements in this array now have undefined
values". I don't think it's controversial that in many situations, we
tacitly understand that we simply don't care about the remainder of a
buffer after a certain point. In the case of producing a string, that point
is going to be the null terminator, in the absence of on-site documentation
to the contrary; I'd label anything else as overly clever.

Meanwhile, "never" would be a strong word to describe the rate that
strncpy(3)'s lack of null termination is documented at the call site; 30 of
the 339 call sites I mentioned have an associated comment regarding null
termination. (ICU seems to be the best library comment-wise, but even it
doesn't place them consistently.) It's obviously far from routine in
existing code, but it's not something that never happens.

Thank you,
Matthew House
