Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 782F676A09C
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 20:46:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbjGaSq6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 14:46:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229722AbjGaSq5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 14:46:57 -0400
X-Greylist: delayed 400 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 31 Jul 2023 11:46:54 PDT
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 678719E
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 11:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690828812;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=KyteFtvqFz/oj+uX5xUApwjv+aHw4ZgzLtPilqQgHj0=;
        b=G/YAdK9/Mzem1NgEnZmyrgi6mN3srMqvTb4YgHY7hXRLkMsp8b4Dxsma9BF8gfvjIlp1/i
        KAL+TQhTRcOUGw14euJgW6s2daWXqtZadAcn7k9KHM8Sw7Ps2Bg/WCA9SYcE/MAivOJ+ED
        QwQoq8QiN7v7iY/uU6fydSY57vSVGjc=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 6b2cb745 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Mon, 31 Jul 2023 18:40:12 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id 27adb384;
        Mon, 31 Jul 2023 20:40:11 +0200 (CEST)
Date:   Mon, 31 Jul 2023 18:40:11 +0000
From:   Lennart Jablonka <ljabl@ljabl.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Cc:     groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: boldface, italics, spaces and ellipses in synopses of commands,
 and *nix history
Message-ID: <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org,
        Alejandro Colomar <alx@kernel.org>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
 <20230731154535.iqx4zuzztcum6f66@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230731154535.iqx4zuzztcum6f66@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>> I’d argue that’s acceptable for those utilities adhering to the POSIX
>> Utility Syntax Guidelines;  that is, those that just use getopt.  And
>> thus,
>>
>> 	foobar [-v ...]
>>
>> 	 -v ...  Be more verbose.  This options can be specified
>> 	         multiple times to increase the verbosity level.
>>
>> Makes it reasonably clear that you can make it very verbose by both
>> -vvv and -v -v -v.
>
>I don't have a mastery of those Guidelines but I accept that they can
>contextualize the syntax enough to remove the ambiguity.

Actually, reading it again, I would just drop the ellipsis.

	foobar [-v]

	 -v  Be more verbose.  This option can be specified
	     multiple times to increase the verbosity level.

>> None of this invalidates your explanation of ellipses and space
>> therebefor.  But I don’t like your explanation.   Point is, I wouldn’t
>> have gotten the idea of not putting a space there in the first place:
>> An ellipsis is most always delimited by spaces, in synopses as in
>> prose.
>[rearranged]
>> In POSIX, an ellipsis is not italicized and not delimited by spaces,
>> as in
>>
>> 	p̲a̲t̲h̲...
>> 	[-o f̲o̲r̲m̲a̲t̲]...
>
>Applying the rules of prose here is what makes me nervous about your
>interpretation.  And POSIX's, for that matter; `argv` processing is far
>less forgiving of whitespace errors than readers of prose are.

Oh, but synopses are prose!   You say that you want unambiguous 
synopses, I agree;  but you still need to read the options’ 
descriptions to know all about the utility’s command-line syntax.   
You don’t embed regular expressions for the arguments in the 
synopsis.   While there are styles for specifying different 
requirements, like having multiple symbolic command lines for 
alternatives with largely different syntaxes (e.g., a symbolic 
command line per sub-command), there are still requirements only 
expressed in the DESCRIPTION:  One option might be optional unless 
a certain other option is given.   You wouldn’t write 
[-a] [-b -a], you’d just write [-a] [-b], or rather [-ab].   If 
you should follow quite strict rules in you synopses (and you 
should), it still is more or less free-form.   And I’m not 
a forgiving reader of prose with whitespace errors.

>I have no serious beef with POSIX if they supply enough context in their
>interpretation guidelines for people to make sense of their synopsis
>notation.  The hazard lies in people who don't write to those guidelines
>thoughtlessly aping POSIX's notation, unmoored from its context.
>
>I find that two rules are popular among software developers.
>
>1.  Don't write technical documentation.
>2.  If you find you must write technical documentation, do it badly.

Exactly.   Which means:  All we can and something we should do is 
have guidelines.   Saying nothing of what those guidelines should 
be.

>> Now, for opinions differing from yours:  In mdoc world, the ellipses
>> frequently are part of the argument, as in
>>
>> 	.Ar path ...
>>
>> and thus also italicized.
>
>I know, and I hate it; the ellipsis doesn't merit italicization any more
>than option brackets do.  mdoc(7) is expressive enough that you don't
>actually type the brackets; you use its `Op` macro.  To me, it is
>telling that, thus having full control of the styling of synopsis
>brackets, mdoc's author(s) (most prominently Cynthia Livingston, in the
>macro language's second and final edition) set them in roman.[7]

I’m inclined to agree, though here I value convention over 
taste—and the convention for mdoc manuals has been from the start 
to italicize the ellipses.

>Thanks for raising this.  The fix was straightforward, and you can
>expect it in my next push to groff Git.[9]

>[9]
>
>diff --git a/tmac/doc.tmac b/tmac/doc.tmac
>index 70ec41ea2..6267d2a08 100644
>--- a/tmac/doc.tmac
>+++ b/tmac/doc.tmac
>@@ -359,7 +359,7 @@
> .  ie        "\$1"|" \
> .    ds doc-arg\n[doc-arg-count] \f[R]|\f[]
> .  el \{ .ie "\$1"..." \
>-.    ds doc-arg\n[doc-arg-count] \|.\|.\|.
>+.    ds doc-arg\n[doc-arg-count] \f[R]\|.\|.\|.\f[]
> .  el \
> .    ds doc-arg\n[doc-arg-count] "\$1
> .  \}

Heh, that sneaky spreading of ellipses is funny.   I don’t think it 
should be there, but whatever.   Do note that this only works if 
the ellipsis is its own argument:  Not having read doc.tmac more 
closely this looks like it somewhat contradicts your position on 
spaces with ellipses.

	foobar [-o option] ...  \" .Ar ...

	 -o option  Apply more options.  Because there’s only so
	            much space for single-letter options, you see.

	The -o options:

	.\" .Ar v...
	 v...  Be verbose.  The more v, the more verbose.

Oops, now the first ellipsis looks better than the second one.   
Yeah, I dislike that hack.

>I speculate that mdoc's italicization of ellipses would have been
>regarded as a problem, but that it was overlooked, and here's why.

This sounds like a reasonable explanation.

>Chronologically, it appears to me that Livingston was still working in
>the pre-x86 Unix tradition, even if at what we now recognize to be its
>twilight.  People still had access to, and consulted, typeset manuals.
>
>https://minnie.tuhs.org/cgi-bin/utree.pl?file=4.3BSD-Tahoe/usr/doc/usd/
>
>4.3BSD-Tahoe was 1988.  mdoc(7) arrived in 4.3BSD-Reno in 1990.
>
>"The manual was intended to be typeset; some detail is sacrificed on
>terminals." (man(1), _Unix Time-Sharing System Programmer's Manual_,
>Eighth Edition, Volume 1, February 1985)

What I found in 4.3BSD-Reno’s mdoc.samples(7) and think is funny:

	[mdoc's] purpose is to allow translation of man pages from
	.Xr troff 1
	to
	.Xr TeX Coming\ Soon
	and vice versa.

Is (was then) there an equivalent to nroff for TeX?   I think not.

>And so it was done.  In bold.  Because that's all VGA had to offer.  Man
>pages had demanded since 1979 that three text styles be available.  The
>display hardware that every 386BSD and Linux user was running supported
>two.  The, uh, obvious solution was just to use bold for everything.
>Screw italics, who needs 'em?  And thus, the man(1)-using community
>ejected itself from paradise with such force that it forgot that man
>page cross references (or to a large extent, anything else) were ever
>set in italics in the first place.

So that’s why!

>It didn't take a genius to figure out that you could fake having
>additional styles by applying color attributes to man pages (as was done
>in GNU ls in early days--was it in "fileutils" back then?).  This, too,
>started a tradition that persists to this day.[5]

Couldn’t they have rendered italics as a different color then?

>Anyway, an italic ellipsis in a synopsis is always wrong, I submit.

If using mdoc, it’s less wrong to follow the established, if bad, 
convention of making ellipses for arguments italic, I submit.

>I also don't approve of the esthetics of boldfaced man page cross
>references.  They are neither typographically pleasant nor historically
>informed.  But _you_, the man page reader, can have them if you want.

And here you have my fullest agreement.

>[5] https://bugs.archlinux.org/task/79053
>
>    At some point, less(1) users are going to have to decide which they
>    want more: colorful man pages or OSC 8 hyperlinks.
>
>    We _could_ support color attributes in man pages directly in groff.
>    I feel sure it would horrify Ingo.  It might horrify me.  It would
>    take a lot of design work (ironically, in groff's mdoc(7)
>    implementation, which is based on 4.4BSD's, much of that work may be
>    already done, for other reasons).  Right now I doubt whether it
>    would be worth the trouble or even satisfy the people who want it.
>    less(1)'s support for colorizing man pages works by pattern matching
>    terminal output when the *roff output driver's geriatric--literally
>    pre-termcap--and ambiguous overstriking output convention is used.
>    I would not bet on it being completely robust.  grotty(1) talks
>    about these matters.  The mechanism I can conceive would still
>    require SGR support, to which people, including Ingo, are opposed
>    anyway.  ¯_(ツ)_/¯

Wouldn’t it be easiest to let grotty use terminfo?   Then whoever 
wishes to have colorful man pages would simply write a terminfo 
file and set MANROFFOPT=-P-Txterm-colorful.
