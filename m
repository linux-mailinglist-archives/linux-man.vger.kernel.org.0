Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33AEB2FE9B2
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 13:14:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729177AbhAUMLz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 07:11:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729929AbhAULEX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 06:04:23 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD37DC061757
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 03:03:23 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id g12so1984202ejf.8
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 03:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ojv1J3m8QJRySt3li1CHv5qsoj16fqRa1PTjn+d5p44=;
        b=f+hyWYXZD32HOi2c2U7yixk27F/0B2/JCA7bkXejXmMH3wdWFByUgAGKv7vN4ebrox
         e6rLZd0wLkVrmx+1OWFdbcQG31HyuIUwtaZm9rnJDAMGoEHrUuWkMZ2+lubn1Fd6/9WK
         VZlGZVt2zRAno4nb/jXua6hepoa9yOBRdzpIRrmlZd27l3ngWOFqHQe/T9i8slccwOcw
         2sdtjAt7SI9DPiHw/66iMOYBkJDKeRlGM7IkYgdUNuI2XOFTmtYKPx7Ox+8GqpE8Grs/
         2Mg4l2OEv9GY27I8ou71R++zpLwmJGJh4mOOqLPm1TaZpnq5QLOFzfvZ91UBbyti0o9R
         gmJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ojv1J3m8QJRySt3li1CHv5qsoj16fqRa1PTjn+d5p44=;
        b=DHKBWFOU9zUkXBKztcw2+QjnfaFq8qS0PbTI+jBcpQKNeslx8cRLYxmISYlFOFdKW7
         K66QJ5WFVvvejllBWbWhB90PKEgFX+TGxuiwnWh/vstV1lEj+n6Aqwf5liNfNSu+SaFu
         3DtOOdTmQ1MG+pEsl1rj+da73qI6ZvbVUQgqgAyq4f6EjoeNSl33WCUiYxbeVPAC0vdF
         euxulSGDf1EMlV4II+tQQN4WDBzBX1Z3FlDNVfJbj87b4v+tf9p/sASwP4h2TyiBhriA
         TzZwpwqaD1qmQjfys2uBNypb75TypzarzSIm71xGe7amUMtpBbjP2nkiFTUIy0EGf3Vg
         VGLw==
X-Gm-Message-State: AOAM532CMQRHPf8XWQoy9BPzvIkdAaNOjMiLvNg3BT2Ae1hLNfdeZtKI
        kXUMYqjJcOQUEXmFfwF0P2lTabjVZdo=
X-Google-Smtp-Source: ABdhPJyZBK30P9HjBtpyxxIakU+tVal2dCsHzSNwugzbYZZI9cUphz1nnlYT4va4ubsgZ7v6+OKXBg==
X-Received: by 2002:a17:907:3343:: with SMTP id yr3mr9145459ejb.73.1611227002392;
        Thu, 21 Jan 2021 03:03:22 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id w11sm2648347edj.8.2021.01.21.03.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 03:03:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        groff@gnu.org
Subject: Re: Escaping hyphens ("real" minus signs in groff)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
 <20210121061158.5ul7226fgbrmodbt@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
Date:   Thu, 21 Jan 2021 12:03:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210121061158.5ul7226fgbrmodbt@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Branden,

On 1/21/21 7:12 AM, G. Branden Robinson wrote:
> [looping in groff@ because I'm characterizing an unresolved argument and
> people may want to dispute my claims]
> 
> Hi Michael!
> 
> At 2021-01-20T22:03:12+0100, Michael Kerrisk (man-pages) wrote:
>> Hi Branden,
>>
>> I wonder if I might ask for your input...
>>
>> For some time now, man-pages(7) has the text (mostly put there by me):
>>
>>    Generating optimal glyphs
>>        Where a real minus character is required (e.g., for  numbers  such
>>        as  -1,  for  man  page cross references such as utf-8(7), or when
>>        writing options that have a leading dash, such as in  ls -l),  use
>>        the following form in the man page source:
>>
>>            \-
>>
>>        This guideline applies also to code examples.
>>
>> (You even helped with this text a little, adding the piece about
>> manual page cross-references.)
>>
>> I'm having some doubts about this text. The doubts were triggered
>> after I noticed that many code snippets (inside .EX/.EE blocks) don't
>> follow this recommendation. I was about to apply a large patch that
>> fixed that when I began to wonder: is it even necessary?
> 
> Short answer: yes, I would do that.

I appreciate your long answer *very* much. But, I'm glad you started 
with the short answer :-). I have made the change.

> Long answer
> ===========
> 
> There are people who would argue (I've heard mostly from BSD people)
> that man pages should "DWIM", and always render a "-" as an ASCII 45
> hyphen-minus regardless of context, and while we're at it, it should
> stop having non-ASCII glyph mappings for `, ', ^, and ~ as well.  I
> resist this, as it's contrary to troff's semantics for these characters
> since the early 1970s.
> 
> My most recent contretemps with people about this can be found starting
> here:
> 	https://lists.gnu.org/archive/html/groff/2020-10/msg00158.html
> 
> The former groff maintainer and lead developer, Werner Lemberg, agrees
> with me on this point, but some people whose *roff horizons seem to
> extend only as far as man pages are passionately opposed.
> 
> The issue was not resolved on the groff mailing list and may not ever
> be; the instant discussion got derailed by several peoples' fascination
> with the Sun Gallant Demi font.  :-/
> 
> I share all this because it is a contentious issue and I cannot pretend
> to represent my view as a universal consensus.  It is, however, I think,
> the opinion shared by people with a fair knowledge of *roff systems and
> who perceive the man(7) macro language as an application of a
> typesetting system and not an isolated domain-specific language for man
> pages.
> 
> I got fatigued of the fight before I could share my findings about
> historical Unix manuals going back to Version 2.  I get the feeling
> people don't really care; they'll happily wield the club of historical
> continuity when it works in their favor, and discard it as irrelevant
> when it doesn't.  But I can't say _I've_ never been guilty of that
> inconsistency...

Thanks for the background.

>> Some thoughts/questions:
>>
>> * I believe that when rendering to a terminal, the use of "\-" is
>> equivalent to just "-"; they both render as a real minus sign (ASCISS
>> 055). Right?
> 
> It depends on the capabilities of the terminal, and specifically whether
> it supports any hyphen, dash, or minus glyphs apart from ASCII 055.
> None of ASCII or the ISO 8859 encodings did, and Windows-1252, which
> does, is not a popular terminal encoding among Unix/Linux users.
> 
> But Unicode also does, and Unicode _is_ popular.  If you write a "raw"
> roff document and render it to a UTF-8 terminal, you will be able to see
> a difference.

Thanks for that info on Unicode/UTF-8 terminals...

> 
> Example:
> 
> $ printf "UTF-8 \\-1\n" | groff -Tutf8 | cat -s

GOt it.

> Back when people started using UTF-8 terminals, confusion of - and \- in
> man pages was even more rampant than it is today, and groff added
> directives to the man(7) implementation[1] to deliberately degrade
> glyphs to ASCII.
> 
> .\" For UTF-8, map some characters conservatively for the sake
> .\" of easy cut and paste.
> .
> .if '\*[.T]'utf8' \{\
> .  rchar \- - ' `
> .
> .  char \- \N'45'
> .  char  - \N'45'
> .  char  ' \N'39'
> .  char  ` \N'96'
> .\}
> 
> It was intended as a stopgap measure, but thanks to development on groff
> slowing down and its maintainer retiring from the role, it's remained
> the case for about a decade, and some people now regard the stopgap as
> an eternal truth that must be preserved, lest all writers of
> documentation defect to Markdown or something.
> 
> The above probably should have been placed in the man.local file
> instead[2][3], to encourage system administrators to make transitions
> away from the stopgap as their sites or distributions deemed suitable.
> I have proposed this very thing for the next groff release, 1.23.0, but
> even that met with stiff resistance from the BSD camp.  They want cement
> poured over the code snippet above.
> 
>> * When rendering to PDF, then "\-" and "-" certainly produce different
>> results: the former produces a long dash, while the other produces a
>> rather short dash.
> 
> Yes.  Specifically, the issue depends on whether a _font_ distinguishes
> a hyphen from a minus sign.  (To a typographer, there's _no such thing_
> as a "hyphen-minus", the ISO name for ASCII 055--or at least there
> wasn't until computer character encodings forced compromises onto the
> world.) But matters are made muddy by the fact that terminal emulators
> impose another layer between the typesetter (*roff) and the fonts used
> to draw glyphs.  groff's solution is to use the encoding of the locale
> as a proxy for font coverage, which works well only if the font has
> coverage for all the glyphs of interest to a document.  Over time this
> has become increasingly true for fonts widely used in terminal emulators
> and glyphs commonly encountered in practical documents like man
> pages.[4]
> 
>> Certainly, when writing say "-1" in running text (i.e., not in a
>> .EX/.EE code example), one should use "\-1", since without the "\",
>> the dash in front of the "1" is rather anaemically small when rendered
>> in PDF.
> 
> Yes.
> 
>> The same is true when writing options strings such as "ls -l". We
>> should use "ls \-l" to avoid an anaemic hyphen in PDF.
> 
> Yes.
> 
>> When writing man-pages xrefs (e.g., utf-8), the use of "\-" produces a
>> dash that is almost too long for my taste, but is preferable to the
>> result from using "-", where the rendered dash is too small.
> 
> I share your discomfort with the length of the dash in man page xrefs,
> and also your assessment that it's the lesser evil.
> 
> Another issue to consider is that as PDF rendering technology has
> improved on Linux, it has become possible to copy and paste from PDF
> documents into a terminal window.  In my opinion we should make this
> work as well as we can.  Expert Linux users may not ever do this,
> wondering why anyone would ever try; new Linux users will quite
> reasonably expect to be able to do it.

Agreed.

>> Inside code blocks (.EX/.EE) is there any reason to use "\-" rather
>> than just "-"? Long ago I think I convinced myself that "\-" should be
>> used, but now I am not at all sure that it's necessary. Maybe I forgot
>> something, and you might remind me why "\-" is needed (and I will make
>> sure to add the reason to man-pages(7)).
> 
> Yes; the main reason is so that copy-and-paste from code examples in
> your man pages will work if people _don't_ use the degraded character
> translations in man.local, which are marked as optional.

Got it.

> And I mean copy-and-paste not just from PDF but from a terminal window.

Yes, but I have a question: "\-1" renders in PDF as a long dash 
followed by a "1". This looks okay in PDF, but if I copy and paste
into a terminal, I don't get an ASCII 45. Seems seems to contradict
what you are saying about cut-and-paste above. What am I missing?

> .EX and .EE, originating in the Version 9 Research Unix man macros, are
> "semantic" but they don't _do_ very much.  They don't change
> character-to-glyph mappings; they change the font family (on typesetter
> devices like PDF, not terminals) and turn off filling.
> 
>> Are there any other things I've missed with respect to "\-" vs "="?
> 
> Probably, but nothing I can think of right now.  <laugh>  It's a vexing
> issue.
> 
> To get back to the question you originally posed, I think the change you
> suggested (to consistently use \- in .EX/.EE regions) is sound, and will
> not frustrate correct rendering even on systems that flatten the
> distinction between the minus (\-) and hyphen (-) characters.
> 
> Please follow up with any further questions and I will do my best to
> answer them.

I don't really have any other questions, but I have tried to distill 
the  above into some text in man-pages(7) to remind myself for the
future:

[[
.PP
The use of real minus signs serves the following purposes:
.IP * 3
To provide better renderings on various targets other than
ASCII terminals,
notably in PDF and on Unicode/UTF\-8-capable terminals.
.IP *
To generate glyphs that when copied from rendered pages will
produce real minus signs when pasted into a terminal.
]]

Seem okay?

> [1] tmac/an-old.tmac
> [2] Debian does this in its /etc/groff/man.local:
> 
> [...]
>   .if n \{\
> [...]
>   .  \" Debian: Strictly, "-" is a hyphen while "\-" is a minus sign, and the
>   .  \" former may not always be rendered in the form expected for things like
>   .  \" command-line options.  Uncomment this if you want to make sure that
>   .  \" manual pages you're writing are clear of this problem.
>   .\" uncommented by Branden, 2019-06-16 --GBR
>   .   if '\*[.T]'utf8' \
>   .     char - \[hy]
>   .
>   .  \" Debian: "\-" is more commonly used for option dashes than for minus
>   .  \" signs in manual pages, so map it to plain "-" for HTML/XHTML output
>   .  \" rather than letting it be rendered as "&minus;".
>   .  ie '\*[.T]'html' \
>   .    char \- \N'45'
>   .  el \{\
>   .    if '\*[.T]'xhtml' \
>   .      char \- \N'45'
>   .  \}
>   .\}
> 
> As you can see, I uncommented my local copy so that I could see if the
> wrong glyphs were being used in man pages.  A large part of my work on
> groff upstream has been on making the man pages better examples for
> other man page writers to follow.
> 
> [3] As can be seen from the groff mailing list thread, Ingo Schwarze of
> OpenBSD rejects the notion of man.local as a file suitable for site
> administrators to customize.  I don't know enough about OpenBSD to
> rationalize this view.
> 
> [4] To check the coverage of your terminal emulator's font, try the
> command "man groff_char".  It contains a specimen of every defined groff
> "special character" and in my opinion is a reasonable test of practical
> glyph coverage[5].  For man pages, it's probably overpowered, even, but
> man pages are merely the leading application of *roff, not the only one.

Thanks for that pointer.

> [5] I've largely rewritten the page for groff 1.23.0 (forthcoming)
> because I was unhappy with what I perceived as its lack of clarity.  A
> recent snapshot at the man-pages Web site[6] is a useful preview, but
> (unless you use something like lynx or w3m) it won't tell you anything
> about the glyph coverage of your _terminal_'s font.  In any event, the
> glyph repertoire has not changed from groff 1.22.4.
> 
> [6] https://man7.org/linux/man-pages/man7/groff_char.7.html

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
