Return-Path: <linux-man+bounces-13-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 936E27E7F32
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48257281577
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD6B3A28C;
	Fri, 10 Nov 2023 17:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bIZJxQqE"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495973D3AE
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:47:03 +0000 (UTC)
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C66453B92C
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 08:06:13 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6ce2fc858feso1191056a34.3
        for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 08:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699632373; x=1700237173; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80dXuxReNcuGxsWJ8315fWRHZbrsIeN1SlKFB8tT7Rk=;
        b=bIZJxQqE5s7npAvzd18ZAuuuv5diqr4pZGrQyOHHn6VGVdSfuw+wXhjrwEKZk+dfOg
         /gn+JSnvv5rIMqsX3g84E/uQKUPMLbRdljHOr3WIiDPOhjzuW342EqPFkiOJIy2vp5HO
         QR0sXAttQ+cJ2I+es0eXzJGAX5gE59nCzG6JXcLlTeWfkEkZkyoXJAAPyESgEL/Kj1cK
         ljV2LIi7tNEgutwrc+/jaRdIx3vUOwddcZLw7ajcOtikERR4cX1Jage+O9HbjZ9J6BoY
         s/s2LU/0hv5GT3D6GjqYEtV6Jzy8cuHW/mwANqY5wIm2lNoGZgiksHNoAWlbIA1F0cGj
         XEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699632373; x=1700237173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=80dXuxReNcuGxsWJ8315fWRHZbrsIeN1SlKFB8tT7Rk=;
        b=I4L/CUfMwrthbESDInw+C+GxdavyZgHsKzpoxW0vYhOjhIfc9bC9BLZ4w+tBcJ6w6o
         qeruu5Tc5zEaxhqZ72mBlrPp3wjXacxznXu+jl0g0YKQBnZY5AP00dEVz7ByOk9r3ulO
         nYdrFu/wOd2jVJWYuKatxvEjwO5p3Cvt/0XDS115yGfJ5OAypav4oxHLJ9S6/O+sr92A
         yR3To206F5+fMiWAua+U8CeEJanq51dHVzDvQWWVZeuH+VBQ43RHWqhtCaFN86TrPnaY
         g8q8YPZtmlY0dWioHvhEMFNZI6YiW3i8hrLVXo5WAFrN9hkw2RGNjGLw9MwJAQOO8pGh
         SSaw==
X-Gm-Message-State: AOJu0YzmtQvohCKsUC80wJhhrvYH8BakY25+1OefYvgpyYC2O8CNRmXk
	bXwetXTJPF0Q0m1FlQL6smc=
X-Google-Smtp-Source: AGHT+IGXDorapt4EVGuELks0A+aW8wjkyvQCCtMHI1bOzcTKnse5L+noOkXNz+KKwdTHDjlztED6SQ==
X-Received: by 2002:a9d:7cd9:0:b0:6b8:dc53:9efd with SMTP id r25-20020a9d7cd9000000b006b8dc539efdmr9104303otn.3.1699632372024;
        Fri, 10 Nov 2023 08:06:12 -0800 (PST)
Received: from firmament.. ([45.87.214.195])
        by smtp.gmail.com with ESMTPSA id dw1-20020a05683033a100b006ce46212341sm2590256otb.54.2023.11.10.08.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Nov 2023 08:06:11 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Date: Fri, 10 Nov 2023 11:06:00 -0500
Message-ID: <20231110160602.352085-1-mattlloydhouse@gmail.com>
In-Reply-To: <ZUzPNydLkFPEvvsa@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org> <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org> <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org> <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com> <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com> <ZUzPNydLkFPEvvsa@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 9, 2023 at 7:23 AM Alejandro Colomar <alx@kernel.org> wrote:
> > So one can interpret strncpy(3) as copying a prefix of a character sequ=
ence
> > into a buffer (and zero-filling the remainder), in which case you're
> > correct that truncation cannot be detected. But the function is fomally
> > defined as copying a prefix of a string into a buffer (and zero-filling=
 the
> > remainder), in which case the string has been truncated if the buffer
> > doesn't end in a null byte afterward. It's just that one may not care a=
bout
> > the terminating null byte being truncated if the user of the result just
> > wants the initial character sequence.
>
> Yes, with the ISO C definition of strncpy(3), you can detect truncation.
> The problem is that while my definition of it is complete, the
> definition by ISO C makes it an incomplete function (to complete its
> functionallity in copying strings, you need to add an explicit '\0'
> after the call).  So I prefer mine, and for self-consistency, it can't
> report truncation.

Personally, I'm a pragmatist, and I like to see it as kind of a duality: it
can be used as part of a routine that copies part of a string and reports
truncation, and it can also be used as a complete routine that copies part
of a character sequence but can't report truncation. That reflects how it's
used in practice. And it would hardly be the first such duality in C,
either, given things like the fundamental practice of manipulating
arbitrary objects as if they're character arrays.

(Some of these other dualities are similarly infamous in their room for
error, e.g., forgetting to multiply by the element size when calling
malloc(3), which I have often been guilty of myself. And still, a worrying
amount of code neglects to test for multiplication overflow when doing
this, even when the length comes from an untrusted source. Yet somehow I
haven't seen any calls for a mallocarray(3) function to replace it. Ditto
with memset(3), which can and has caused actual hard-to-notice bugs due to
the first few elements looking correct even if the provided length is too
short.)

But you're entitled to your opinion on how it ought to be best represented
in the man page, as long as the immediate shortcoming of the function w.r.t
producing strings is made very clear, even to readers who aren't in the
habit of contemplating formal definitions. I'm satisfied by your patch in
that regard.

> > That's a nice library that I didn't know about! Unfortunately, I don't
> > think it's a very viable option for the long tail of small libraries I'=
ve
> > referred to, which generally don't have any sub-dependencies of their o=
wn,
> > apart from those provided by the platform.
> >
> > Going from 0 to 2 dependencies (libbsd and libmd) requires invoking the=
ir
> > configure scripts from whatever build system you're using (in such a way
> > that libbsd can locate libmd), ensuring they're safe for cross-compilat=
ion
> > if that's a goal, ensuring you bundle them in a way that respects their
> > license terms, and ensuring that any user of your library links to the =
two
> > dependencies and doesn't duplicate them. At that point, rolling your own
> > strlcpy(3) equivalent definitely sounds like less mental load, at least=
 to
> > me.
>
> Yes, if you had 0 deps, it might be simpler to add your implementation.
> Although it's a tricky function to implement, so I'd be careful.  If you
> need to roll your own, I would go for a simpler function; maybe a
> wrapper over strlen(3)+strcpy(3).

Such a wrapper would indeed be useful for detecting truncation, but a full
strlcpy(3) equivalent would be necessary for permitting the truncation and
continuing, which is the behavior of the majority of existing strncpy(3)-
based code.

I don't deny that this truncation behavior is often done dubiously and
rarely receives enough scrutiny, but a significant chunk of the uses really
are just building an informative string which won't cause any harm if
truncated, and installing additional control flow to handle truncation
errors in places where there currently isn't any can introduce its own
bugs.

> > I didn't see this as an issue in practice when I was reviewing all those
> > existing usages of strncpy(3). The vast majority were used in the midst=
 of
> > simple string manipulation, where the destination buffer starts as
> > uninitialized or zeroed out, and ultimately gets passed into a user
> > expecting an ordinary null-terminated string.
> >
> > (One exception was a few functions that used strncpy(dst, "", len) to z=
ero
>
> Holy crap!  Didn't these programmers know bzero(3) or memset(3)?  :D
>
> > out the buffer, which is thankfully pretty obvious. Another exception w=
as
> > the functions that actually used strncpy(3) to produce a null-padded
> > character sequence, e.g., when writing a value into a section of a bina=
ry.
> > But in general, I found that it's usually not difficult to tell when a
> > usage is being clever enough that the null padding might be significant=
.)
> >
> > In fact, the greater confusion came from the surprisingly common practi=
ce
> > of using strncpy(3) like it's memcpy(3), by giving it the known length =
of
>
> It gets better!  :D

In all these cases, I think the function naming really is having somewhat
of a psychological effect: the authors are wrangling with strthis(3) and
strthat(3) for dozens of lines, so they'd find it scary to start mixing it
up with mem*(3) functions ("I'm working with C strings, not with byte
arrays!"), or perhaps they don't even consider it. They'd rather remain
with strncpy(3), even when it means they have to manually append it with a
null terminator or another string. But I'm no psychoanalyst, so take that
with a big grain of salt.

(Meanwhile, in my own code, I try to work with pointer-and-length arrays
whenever possible instead of fooling around with null terminators and all
their off-by-one fun, so I've become leery of using any str*(3) functions
apart from strlen(3) and strnlen(3).)

> > (This is also why I was confused by your support for strcpy(3) on the
> > grounds that _FORTIFY_SOURCE exists. Sure, it's better than strncpy(3) =
in
> > that its behavior isn't nearly so subtle, but _FORTIFY_SOURCE can only
> > protect us from overruns, not from all the "small bugs" that might ensue
> > from people becoming more clever with sizing the destination buffer with
> > strcpy(3).
>
> I don't think strcpy(3) is as propense as strncpy(3) to ask programmers
> to be clever about it.  In the case of strncpy(3) it's due to it being
> an incomplete string-copying function.  strcpy(3) is complete.
>
> > Also, if it were truly a panacea, then we'd hardly have to worry
> > about the problems of strncpy(3) at all, since it would detect any misu=
se
> > of the function.)
>
> Fortification detects overruns in writes, which is how it protects
> strcpy(3).  However, fortification can't protect against overruns in
> reads, which is what strncpy(3) causes due to missing null terminators.
> strncpy(3) also causes off-by-one bugs (I'll detail below), which
> strcpy(3) doesn't (and strlcpy(3) doesn't either).

Ah, thank you, I wasn't aware of that limitation in _FORTIFY_SOURCE.

But I think my notion of problematic cleverness is somewhat different than
yours. When I think of code being excessively clever, I specifically think
of places where it relies on a certain property of the program state, but
it's unclear how that property is upheld at that point in the program.

This cleverness primarily appears in two different forms, in my experience.
In one form, snippet A is immediately followed by snippet B, but B depends
on some non-obvious property set up by A, and the code has no comments or
other documentation to this effect. In the other (more common) form,
snippet A sets up an obvious property that snippet B depends on, but the
two snippets are miles apart in the code, and it's difficult to see the
connection between the two. (The latter can be exacerbated by intervening
control flow.)

In this sense, cleverness is mostly orthogonal to the 'completeness' of a
particular function interface. A non-clever use of strncpy(3) would be
calling it and then immediately appending or testing for a null terminator;
then, we have two lines forming a functionally complete whole. A clever
use of strncpy(3) (of the second form) would be setting or testing the null
terminator way earlier or way later in the code, both of which were
unfortunately frequent in my review, though still a minority of uses.

Another clever use, of the first form, would be appending a null
terminator, using the output in a way that looks like we just want a
string, but then secretly depending on the buffer being null-padded to the
full length. This seems to be a particular concern of yours, but in
practice, I haven't been able to find a single instance of this, except
possibly in GNU binutils which already clearly exudes evil from every line.

On the other hand, I also see strcpy(3) as no less prone to overly clever
usage, despite being 'complete' in its own definition. The problem is that
it's generally not a complete operation in the context of its typical use
cases, which only have a finite destination buffer and need to ensure that
the entire source string will fit. The author has a choice to make in
deciding how to make this guarantee, and some of these choices can be
arbitrarily clever. In particular, since the author doesn't strictly need
to know the exact size of the source string or destination buffer at the
time they call the function, they can make those sizes as nebulous and
indirect as possible.

For example, a non-clever use of strcpy(3) would be immediately preceding
it by either an "if (strlen(src) >=3D dsize)" check, or an allocation of
strlen(src) + 1 bytes, which I think we both agree is the ideal scenario;
the code makes the guarantee and then immediately acts on it. But a clever
use would be exporting this length check to all the function's callers, or
only calling strlen(3) on some precursor(s) of the source string and then
deriving its full length with a tricky and error-prone formula, or simply
not testing the length of the source string at all, but sizing the
destination buffer based on the general vibes of the interface.

In fact, we can once again look at how code abuses strcpy(3) in practice:
- Of sizing the destination buffer in some far-off corner of the file, I
  found 4 instances in GNU binutils. Similarly, of sizing the source string
  in a far-off corner and not checking it, I found 6 instances in llvm-nm.
- Of sizing the destination buffer with an involved calculation and then
  trusting the result, I found 15 instances in GNU binutils, 1 in GDB, 1 in
  CPython, 3 in Firefox, and 4 in .NET Runtime.
- Of accepting an arbitrary destination buffer size without clearly
  bounding it below by the source string's length, I found 24 instances in
  GNU binutils; I believe at least 2 can cause UB with certain
  configurations and inputs. (I gave up trying to enumerate these in the
  other codebases, since it's generally not clear at all whether a minimum
  size is understood to be implied by the interface.)
- Of not checking the source string's length nor otherwise clearly bounding
  it above, I found 37 instances in GNU binutils, 3 in CPython, 14 in
  Firefox, 3 in .NET Runtime, and 6 in OpenJDK; I believe at least 19 can
  cause UB.
- Of obvious off-by-one errors that will trivially result in UB, I found 2
  instances in GNU binutils, 6 in CPython, 3 in Firefox, and 1 in OpenJDK.
- Finally, of a non-obvious but critical side effect (i.e., unintentionally
  clever code of the first form), I found just 1 instance in Firefox, where
  a certain error branch just happens to be reachable only when the buffer
  is large enough for the error message to fit.
And these aren't even counting its cousins strcat(3) and sprintf(3)!

So I hope you'll forgive me if I have a hard time believing that authors
are less likely to be overly clever with strcpy(3) than with strncpy(3),
purely on account of the former's interface being more 'complete'.

> > Probably the only way to solve the cleverness issue for good is to have=
 an
> > immediately-available, foolproof, performant set of string functions th=
at
> > are extremely straightforward to understand and use, flexible enough for
> > any use case, and generally agreed to be the first choice for string
> > manipulation.
> >
> > Unfortunately, probably the closest match to those criteria, especially=
 the
> > availability criterion, is snprintf(3), which has the flaws of using int
> > instead of size_t for most sizes, not being very performant, and not be=
ing
> > async-signal-safe. Alas, it will likely remain a dream, given all the w=
ars
> > over which safer string functions have the best API. But at least
> > strlcpy(3) has a pretty sound interface, if other platforms ever get ar=
ound
> > to including it by default.
>
> strlcpy(3) will be in POSIX.1-202x (Issue 8), so it's a matter of time
> that it'll be widespread.

I noticed that, but I've always been a pessimist regarding the timelines of
cool new things being rolled out. It will take some months to years before
Issue 8 is released, months to years for all the relevant platforms to get
the memo and implement it, many years for the knowledge to trickle down to
the everyday library authors, and many more years for old versions of
platforms to reach the end of their support periods. And I don't want to
be one of those people advertising stuff that's perpetually 'just around
the corner'. (For that matter, I wonder how many decades it will be before
I see widespread use of posix_close(2) in a serious codebase, if ever.)

> > My point is isn't that the difference is undocumented, but that the typ=
ical
> > man page reader isn't reading the man pages for their own sake, but bec=
ause
> > they're looking at some code, and they want to Know What It's Doing as =
soon
> > as possible.
>
> We could maybe add a list of ways people have tried to be clever with
> strncpy(3) in the past and failed, and then explain why those uses are
> broken.  This could be in a BUGS section.

I'd be interested in your experiences of people "trying to be clever" per
your perspective; as I mentioned, in my earlier review of actual strncpy(3)
usage, the only cleverness that occurs in non-negligible amounts has been
either in the midst of using it in its 'intended' role for producing a
null-padded character sequence (I'm referring to binutils here), or messing
around with which part of the code is responsible for appending the
terminator.

> > Instead, it's code making use of strncpy(3) in a particularly clever way
> > that I'd find confusing, and in those cases, I lie the blame squarely on
> > the cleverness rather than the function itself.
>
> I blame the definition of the function of ISO C.  Why?  Because by being
> an incomplete string-copying function, it forces the programmer to be
> clever about it.  You can't just use strncpy(3) and that's all; you need
> to do something else, and then you do clever stuff, which ends up badly.

It forces the programmer to perform an extra step, but it doesn't force the
programmer to be clever in performing that extra step. As I have described
above, strcpy(3) also needs an extra step that the programmer can be
inordinately clever with, regardless of being a complete string-copying
function. So I don't see strncpy(3) as being uniquely evil here.

> > So will all the custom strlen(3)+memcpy(3)-based replacements suddenly =
be
> > immune to off-by-one bugs?
>
> Slightly.  Here's the typical use of strlen(3)+strcpy(3):
>
> if (strlen(src) >=3D dsize)
>         goto error;
> strcpy(dst, src);
>
> There's no +1 or -1 in that code, so it's hard to make an off-by-one
> mistake.  Okay, you may have seen that it has a '>=3D', which one could
> accidentally replace by a '>', causing an off-by-one.  I'd wrap that
> thing in a strxcpy() wrapper so you avoid repetition.

As I learned, the typical use of strcpy(3) (at least 80% of uses in my
estimation) is actually copying a string into a new buffer, not an existing
buffer. And that does need a +1 to calculate a size to pass to the
allocation function, and usually a lot more +s if it's going to be
concatenating further strings. (Did you know that it's not an uncommon
practice to use "char value[1];" for a variable-length string at the end of
a struct, then depend on that 1 byte being included in the size of the
struct when allocating it?) Meanwhile, code does manage to make that off-by-
one error between >=3D and > in practice regardless.

Relatedly, as I also learned from all the manual strdup(3)-like snippets
that use a custom allocator, the typical library author is deathly allergic
to writing a custom wrapper over anything that isn't an allocation
function; they'll repeat the entirety of the logic inline as many times as
it takes. So I don't buy that most people would be replacing numerous calls
to strncpy(3) with calls to a unified wrapper function that can be
inspected and fixed all in one place, as you seem to suggest in your later
email.

> > Or will the vast majority of current strncpy(3)
> > users be willing to either restrict their platform support or add two e=
xtra
> > dependencies to their build process just to have strlcpy(3)? I'd hardly=
 be
> > inclined to think that off-by-one bugs are a particular specialty of
> > strncpy(3).
>
> They are.  Here's the typical use of strncpy(3) as a replacement:
>
> strncpy(dst, src, dsize);
> if (dst[dsize - 1] !=3D '\0')
>         goto error;
> dst[dsize - 1] =3D '\0';
>
> There are many more moving parts, so more chances to make mistakes.
> And you see it forces the programmer to write explicitly -1 twice.  I've
> seen code that forgets to do the -1, and also code that uses -1 in the
> strncpy(3) call (which makes it impossible to detect truncation).

That "dst[dsize - 1] =3D '\0';" line is extraneous, and none of the existing
truncation-detecting uses of strncpy(3) I saw have its equivalent; after
all, we just checked that character with the if statement, there's no need
to set it again. Without that line, there are only two lines of logic, and
a single -1, matching the single +1 needed by the typical use of strcpy(3).

Also, the typical use of strncpy(3) by far is to allow a truncated string
rather than raising an error on truncation, and in that use case, it makes
no difference whether or not the size inside the strncpy(3) call has a -1.
The memcpy(3) replacement for truncation needs an additional min() ternary
or macro, and it still needs a manual null terminator that can have the
exact same off-by-one error.

> > By that standard, every call to a function that takes an output pointer=
 and
> > returns the number of elements written (say, readlink(2)) would need a
> > comment saying "the remaining elements in this array now have undefined
> > values".
>
> No, because it does precisely what is intended.  It is when you add dead
> code when you need to justify it.

Again, that seems like an odd standard to apply only to strncpy(3)'s
destination buffer. For instance, suppose that an API accepts an input
struct with optional fields. It's a common practice to zero out every field
with memset(3) or =3D {0}, then fill in the input fields that are actually
used, regardless of whether the API is specified as actively ignoring the
remaining fields.

Certainly, it can be quite a task to figure out whether the fields are
actually read, if the API is poorly specified; without going through its
entire implementation, any of those "unused" fields could be copied around
or compared before being discarded, making it dangerous to leave them
uninitialized. But need we add a comment to every one of those memset(3)
calls, "I'm unsure whether this zeroing is significant at all"? Perhaps
such a comment might be helpful, if there really is reason to suspect that
the API is nefarious, but I've hardly ever seen stuff like that in
practice.

(Or, for a silly reductio ad absurdum, if some code calls malloc(3), then
continues with some cleanup functions if it returns NULL, then would that
code have to justify why malloc(3) set an errno value that seemingly
never gets read? Those cleanup functions could be doing something clever by
reading errno on entry, after all!)

> > I don't think it's controversial that in many situations, we
> > tacitly understand that we simply don't care about the remainder of a
>
> While the analysis isn't very hard, it takes some time, examining all
> surrounding code to make sure nothing cares about the trailing bytes.
> When you have a hundred such calls, you need to make sure nobody was too
> clever around any of them.

Sure, there's a hypothetical concern that some later consumer might notice
the zeroing and act on it. But strncpy(3) is hardly the only thing in the
typical codebase that produces an unnecessarily-zeroed buffer. Authors
often use calloc(3) or memset(3) for peace of mind and no other purpose,
or, especially in C++, zero out any local buffers in a class constructor to
avoid the specter of uninitialized memory.

And of course, lots of code repeatedly reuses the same buffer for different
strings, handing out pointers to it, and callers could just as easily leak
the left-over data after the null terminator. Verifying that an alleged
string buffer truly is only used as a string is just a fact of life when
refactoring unfamiliar code in C.

> > buffer after a certain point. In the case of producing a string, that p=
oint
> > is going to be the null terminator, in the absence of on-site documenta=
tion
> > to the contrary; I'd label anything else as overly clever.
>
> But again, strncpy(3) forces you to be clever.

If forces you to do extra work, the same way strcpy(3) forces you to do
extra work. And it allows you to be clever, the same way strcpy(3) allows
you to be clever. But at least it bounds the extent of your cleverness in
that it forces you to remember the size of your destination buffer. I'd
much rather review a hundred typical calls to strncpy(3) than a hundred
typical calls to strcpy(3) any day of the week.

Thank you,
Matthew House

