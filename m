Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD2F130BF26
	for <lists+linux-man@lfdr.de>; Tue,  2 Feb 2021 14:20:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232272AbhBBNSB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Feb 2021 08:18:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232237AbhBBNRu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Feb 2021 08:17:50 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9D00C0613ED
        for <linux-man@vger.kernel.org>; Tue,  2 Feb 2021 05:14:39 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id a1so20420661wrq.6
        for <linux-man@vger.kernel.org>; Tue, 02 Feb 2021 05:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q3fuQ4Qupd3LvaW5OFUGgvziH4CmYizNFMxj6rYd4SE=;
        b=lPouN/PGh+354hr2Xse4VrgP3Ia9claT64g7XpLemQ4C2AwdJ0smd/VMCuUPVEiPsD
         7oDiY07VZeQMvE6tXwha4N1vAutYQfc32xUJ1o4EbHpGoPAf4NDo0qRLvWQhPpX8h5Op
         qBq2yTKKca/945qjIaNE8YXcBcg23VrF+5/RN7LiZwTrrO6pBV6oIMWQoNDS+9u3Gdz2
         7sxt3h1EZ3Flsu4O6dWddTIe3DFb8/lZ9na6WBE9JuVyw565P+PB37achKzJnHt75IYq
         rlAWXKsJpCqaY1V84s1HzDYgsy0SNYHjTLuWtO2YQJcUsHfNvaLCBIzdkAQnefWl8AzK
         Dleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q3fuQ4Qupd3LvaW5OFUGgvziH4CmYizNFMxj6rYd4SE=;
        b=szAasiNvIwZjhzRs6lSWjBsHRjy7Q/pR28TmpcZRKRoDOIQvDkD6gZreZP5YQyBfCQ
         5WhuMHsCECiGE8mbhiWvJi3lyrXwCp8FODccR3xo6fRyrjDrgaOeGUC5GGB5xjp2IjHC
         AGlT9ek0JKlCfZkM/YW1X8aBxCEV2I08VRTwWN+aB1inL3oMHfVk6b/fMD8FtK+mK8km
         uol2bx7EMi5iYlE39ff0awqF0zz9HjjBhuSXMoTlTF7SWCvROuhKUcjzkfRWwbJbqHF1
         tAZcsGaAu656wUCINnsTnAYu1OntdgqIlPzIdFeztVp5dyZhHuXTARkkEC7HbBPqEGLp
         ZPaQ==
X-Gm-Message-State: AOAM531iz9a1ETsazz0UDOJ0J/8J3Csa34nDqH8gpNRLmsi9dKN4oZRP
        LBtSurvWvUrLUIUofLEDhp8Emsk7hgo=
X-Google-Smtp-Source: ABdhPJzC5K6rYUcEEFm8Zyw9FVL/bCY1lrSDCD/f5Rsivjkm4qKgc+iuZS8LInB1BRSAV+OrxqIGrg==
X-Received: by 2002:a5d:538b:: with SMTP id d11mr24188627wrv.334.1612271677312;
        Tue, 02 Feb 2021 05:14:37 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id n187sm3079415wmf.29.2021.02.02.05.14.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 05:14:36 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Formatting suggestion revisions
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <20210128205734.nhvua6ameelaomaw@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2c95eb35-3e8a-a745-3242-fc8c8947660c@gmail.com>
Date:   Tue, 2 Feb 2021 14:14:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210128205734.nhvua6ameelaomaw@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Branden,

{I've also seen you reply to this mail.]
I think I'm okay with everything you say in this patch/mail, but I have one concern
On 1/28/21 9:57 PM, G. Branden Robinson wrote:
> Hi Michael and Alex!
> 
> I have some suggestions for the recent new "FORMATTING AND WORDING
> CONVENTIONS" section of man-pages(7).  As I have several unrelated
> miscellaneous issues to report, and none should be challenging to
> integrate, I am presenting a broken-up (annotated) diff inline with the
> full patch attached, along with a demonstrator sample man page for one
> of the issues I raise.
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 7658ef33b..56d6f8b2b 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -511,7 +511,7 @@ However, blank lines (achieved using
>  .IR .PP )
>  may be added in the following cases:
>  .IP * 3
> -to separate long lists of function prototypes ino relates groups
> +to separate long lists of function prototypes into related groups
>  (see for example
>  .BR list (3));
>  .IP *
> 
> tfix (×2)
> 
> @@ -525,7 +525,8 @@ If there is a single such prototype that needs to be continued,
>  then align the continuation line so that when the page is
>  rendered on a fixed-width font device (e.g., on an xterm) the
>  continuation line starts just below the start of the argument
> -list in the line above.  (Exception: the indentation may be
> +list in the line above.
> +(Exception: the indentation may be
>  adjusted if necessary to prevent a very long continuation line
>  or a further continuation line where the function prototype is
>  very long.)
> 
> semantic newline
> 
> @@ -537,11 +538,12 @@ As an example:
>  .BI "              const struct termios *" termios_p );
>  .fi
>  .RE
> -.IP 2. 3
> +.IP 2.
> 
> It is not necessary to repeat the indentation amount when the previous
> one is being reused, and this man page otherwise does not indulge such
> repetition when using .IP to set paragraph tags.
> 
>  But, where multiple functions in the SYNOPSIS require
>  continuation lines, and the function names have different
>  lengths, then align all continuation lines to start in the
> -same column.  This provides a nicer rendering in PDF output
> +same column.
> +This provides a nicer rendering in PDF output
>  (because the SYNOPSIS uses a variable width font where
>  spaces render narrower than most characters).
>  As an example:
> 
> semantic newline
> 
> @@ -569,23 +571,25 @@ This wording is consistent with the wording used in both POSIX.1 and FreeBSD.
>  .\" See man-pages commit c466875ecd64ed3d3cd3e578406851b7dfb397bf
>  Note the following:
>  .IP * 3
> -Wrap the table in this section in a
> -.IR ".ad\ l" / .ad
> -pair to disable text filling and a
> -.IR .nh / .hy
> -pair to disable hyphenation.
> -.IP *
>  Ensure that the table occupies the full page width through the use of an
> -.I lbx
> -description for one of the columns
> +.I x
> +modifier appended to one of the table column formats
> 
> A few issues here:
> 
> (1) In the groff man pages we do _not_ encourage wrapping tables with
> .na/.ad pairs.  (I do notice you said ".ad l/.ad" instead--I'll return
> to that.)  Quoting a commit to our tbl(1) man page from September[1]:
> 
>   Stop advising people to use adjustment-altering requests to bracket
>   tables to cheaply set the alignment of text blocks ("T{", "T}") in
>   table entries.  This is bad advice for man pages (it was overriding
>   -dAD=l to force full justification on after a table in groff_ms(7)).
>   Adjustment requests can be embedded inside text blocks anyway, and you
>   don't even have to remember to undo them.
> 
> The problem with .na before a table, which is the more popular approach,
> and which you probably already discovered given that you're recommending
> ".ad l" instead, is that people who have found a way to force adjustment
> off already will be angry with man pages taking your advice because
> "full" adjustment (to both margins) will spring to life after the table.
> 
> People who _do_ like adjustment to both margins will also be angry with
> your man pages because ".ad l" configures the adjustment mode to be
> ragged-right, which means ".ad" afterwards is a no-op.  You would need
> to recommend ".ad l"/".ad b" instead (or ".ad l"/".ad n"--they're
> synonymous).
> 
> ".ad l" also defeats the mechanism, forthcoming in groff 1.23.0, to make
> the default adjustment mode for man pages user-configurable with the AD
> string.
> 
> In other words, in the next groff release you can pass "-dAD=l" to the
> formatter (groff/troff/nroff) and force left-adjustment for _all_ man
> pages, except those which are rude enough to use raw roff requests to
> override it.
> 
> If you will relax this advice in favor of my suggestion below, it will
> keep man pages rendering nicely while also respecting user rendering
> preferences.
> 
> (2) I don't encourage bracketing tables with .nh/.hy either.  The
> biggest problem is that .hy, despite a tempting analogy with .ad, does
> not set the hyphenation mode to the previous default, but to the
> formatter's hard-coded default, "1", which is not compatible with the
> English hyphenation patterns GNU troff uses.  I'll skip over the history
> of this regrettable point and get to the good news.  groff 1.23.0 will
> also support a HY register allowing the user to specify a preference for
> the default hyphenation mode when rendering man pages.
> 
> The above AD and HY features are already implemented, tested, and
> documented[2].
> 
> (3) I would not use "lbx" as a blanket prescription for a table column.
> I fear people cargo-culting it.  This column descriptor means
> "left-align, boldface, expand".  Only the "x" character is motivated by
> your advice, which I otherwise find sound.
> 
>  (usually the first column,
>  though in some cases the last column if it contains a lot of text).
>  .IP *
>  Make free use of
>  .IR T{ / T}
> -macro pairs to allow table cells to be broken over multiple lines
> +pairs to allow table cells to be broken over multiple lines
> 
> s/macro//
> 
> T{ and T} are not *roff macros, but special tokens recognized by the
> parser of the tbl preprocessor.
> 
>  (also bearing in mind that pages may sometimes be rendered to a
>  width of less than 80 columns).
> +When doing so,
> +it may be necessary to turn off adjustment and hyphenation with
> +.I .na
> +and
> +.I .nh
> +requests,
> +respectively.
> +(Adjustment does not need to be restored.)
>  .PP
>  For examples of all of the above, see the source code of various pages.
>  .SH STYLE GUIDE
> 
> Instead of bracketing a table with .na/.ad and .nh/.hy requests, one can
> put .na and .nh requests in individual text blocks.  Better still, you
> don't even have to remember to turn adjustment back on--tbl takes care
> of that for you.

So, I understand much better now. I guess my one concern is that
sometimes there are tables with a lot of T{ / T} blocks. What you
are saying is that I'd need to add .na and/or .nh in each such
block. That's kind of burdensome. (In practice, maybe it is not as
bad as I think, since a quick grep suggests that there are less
50 such pages.)

What would be nice is a way of saying in the table preamble
that a particular column should not be hyphenated or should be
left adjusted. Is there a way to do that? I'm aware of the tbl(1)
'm' modifier:

       m,M    This  is  a  GNU tbl extension.  Either of these specifiers
              may be followed by a macro name (either one or two  charac‐
              ters  long),  or  long  name  in parentheses.  A one-letter
              macro name must be separated by one  or  more  blanks  from
              whatever  follows.   The  macro which name can be specified
              here must be defined before  creating  the  table.   It  is
              called just before the table's cell text is output.  As im‐
              plemented currently, this macro is only called if block in‐
              put  is  used,  that  is,  text between ‘T{’ and ‘T}’.  The
              macro should contain only simple troff requests  to  change
              the  text  block formatting, like text adjustment, hyphena‐
              tion, size, or font.  The macro is called after other  cell
              modifications  like  b,  f or v are output.  Thus the macro
              can overwrite other modification specifiers.

But that seems to be usable for only one macro. In other words,
doing something like

lmnhmna

to disable hyphenation and adjustment in the T{ / T} blocks in a
particular column of a table doesn't work. More precisely, if
there's a series of 'm' requests attached to a column in the
table preamble, it looks like only the last one is honored.

> I wish I could say the same thing about hyphenation.  .nh does work, but
> tbl forgets to turn hyphenation back on after the table.  This is a bug
> with a long beard--both groff tbl and Heirloom Doctools tbl misbehave
> this way, and due to the latter I suspect it of being true of Version 7
> Unix tbl as well[3].  Lesk's 1979 tbl manual says nothing about it.  It
> is hard to rationalize as a deliberate choice, given the behavior of
> adjustment.  I just learned about this in the course of composing this
> mail and it's my intention to fix it in groff for 1.23.0.
> 
> People who hate hyphenation anyway--and there seem to be many--probably
> won't mind if you forget to advise writers to re-enable it, so maybe you
> can omit my suggested parenthetical with a clear conscience.
> 
> What about adjustment and hyphenation in table cells that aren't text
> blocks?  The answer is simple--they don't happen.  Text blocks are
> called that because tbl arranges for them to be laid out like miniature
> pieces of the main document.  Ordinary table cells are handled using
> roff's tab and field mechanisms, which don't enclose line breaks.  That
> means they're not subject to hyphenation or adjustment.
> 
> I'm happy to prepare fresh patch(es) of any of the above items you
> approve.  Let me know.

> As always, I'm open to any readers' feedback, questions, and thundering
> denunciations.

As always, your input is helpful. No denunciations from me!

Cheers,

Michael

> [1] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=550ab5338e04e54539214997315f451c89ac25e6
> [2] https://man7.org/linux/man-pages/man7/groff_man.7.html#Options
> [3] TUHS doesn't have V7 tbl's source code, and firing up a PDP-11 in
>     SIMH to key in a document with ed so I can test the behavior of its
>     executable requires a lot of patience.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
