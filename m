Return-Path: <linux-man+bounces-3004-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3B8AC2786
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 18:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 183201C05733
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 16:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5685296D10;
	Fri, 23 May 2025 16:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=owlfolio.org header.i=@owlfolio.org header.b="ETDqFhI7";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="sylyN4yB"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C01D294A06
	for <linux-man@vger.kernel.org>; Fri, 23 May 2025 16:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.147
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748017369; cv=none; b=Uf5oVwMB6/dO2QchrMQGEJUwyPLUK3KtCvNuORfZFPdliIAiQ+FEMJ6BNA/qpPhWB322Ptqy4kZa4BDU8gdJmYAGlq37VPUJfYPIkNf7G32LmUfq/zKWKsj1x8KanZ1zxFE4aeXROadqs1G2gwQwUdrmiovNuW91dgycmO5yN68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748017369; c=relaxed/simple;
	bh=RxXHFD5kobzn4wIwhuo7ZBqhyUKelXxm5uQe2EjMy6U=;
	h=MIME-Version:Date:From:To:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=LUPs7J7mBy6Vboe6c1323/eUMo4PZaiY6zteKPW5WtdwKMpJxlm1G5rY/Vkjr9DQ0KATMr1mRkvFmcdfLWTOyZnm1imtCCYq6ZFdybV3vwNRg5JiZVXB/TJZGkKGxU+XqFOIOIsZNSYhFC3SoEXJUWJZ5uEENc7q3TJ20nrnKwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=owlfolio.org; spf=pass smtp.mailfrom=owlfolio.org; dkim=pass (2048-bit key) header.d=owlfolio.org header.i=@owlfolio.org header.b=ETDqFhI7; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=sylyN4yB; arc=none smtp.client-ip=202.12.124.147
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=owlfolio.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=owlfolio.org
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 05DB111400A7;
	Fri, 23 May 2025 12:22:44 -0400 (EDT)
Received: from phl-imap-16 ([10.202.2.88])
  by phl-compute-06.internal (MEProxy); Fri, 23 May 2025 12:22:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1748017364;
	 x=1748103764; bh=alka7tLgbGc3Rg5ZvOMW64p70uf+SKwtfGUdm33wQG0=; b=
	ETDqFhI70WSh+WceciVPY8OmM8DiWQ3yqk2Nh/LyiWBzZG7+3OcWAr4UmWuahEEe
	AsJUphGEa207yVNSmyfHxS792xD55AV6wBlHkOh8Lb/nTZx3X5lVWpLoS6B4cqRy
	Ck8IgSU1EeMQhixgl1blhIw+XFJFxDw6IJXO1Ua6VbdNMrNndBF4nJVHwGwIe2l7
	p1BR+EuyItWio+E+cqWFxKYbfFPxEaJWHLtS1dBmvVfuQFnTZ3eez92R4ROX6ygS
	sT2zM0zZyiorjF+Aa+WKgCGbfhweVap96nnb/a1MyMmj2x/m5hvQ3oqcwjefZWVo
	YUE1s65RvcKCMo5KEqAo/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1748017364; x=1748103764; bh=a
	lka7tLgbGc3Rg5ZvOMW64p70uf+SKwtfGUdm33wQG0=; b=sylyN4yBvSFRZo+BS
	GItNVPoV3C94JRcl1K+9v2vtrowtYNlmrtdeTB4YbXImGhS6Hz6CAXtWBcQn28O0
	RaMXchQlSsYOovQwkekDZUtcSdlEklceUV7ffKq8keOpyDS7VLHpc/Pgi/oJTq9I
	zpPGiBBR77aao6Z+F8pJoxP2BZtgg5ZGi1wPWO/TGspIH+xm/rLtFjKineEV5V99
	/OmeY88JMwxba/+ZPPftx8ii0FltqdFpPFU0KLU6u1I12yu1VZF1cxKyD9Tlpc12
	0pZe+kE5dG5ZIA+WJOTtfsxwQ6TI3CDYW4L0Q4ACwl90c1mlFqau+pCwR44zAg+b
	yAvLg==
X-ME-Sender: <xms:1KAwaCm_Z1S5rEphmMYkqXm38R_r5D0vHzNBVq5kvT4LfeEb7ZLqWw>
    <xme:1KAwaJ1WrTWztQKHf7qLsMT6N2pJAkH8k4TkooZWdu1TZbPzvFvixMgHCThWy0pON
    pm1sxghl4hhGZYPgS0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgdelfeduucdltddurdegfedvrddttd
    dmucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgf
    nhhsuhgsshgtrhhisggvpdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttd
    enucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepofggfffhvffkjghf
    ufgtgfesthejredtredttdenucfhrhhomhepfdgkrggtkhcuhggvihhnsggvrhhgfdcuoe
    iirggtkhesohiflhhfohhlihhordhorhhgqeenucggtffrrghtthgvrhhnpeetvdduvdev
    udeuvedttddtgfeifeejhfetffffleehfeetheejteduveejtdeggfenucffohhmrghinh
    epghhnuhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpeiirggtkhesohiflhhfohhlihhordhorhhgpdhnsggprhgtphhtthhopedvpd
    hmohguvgepshhmthhpohhuthdprhgtphhtthhopehgrdgsrhgrnhguvghnrdhrohgsihhn
    shhonhesghhmrghilhdrtghomhdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrh
    drkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:1KAwaApHu4wlW617iQOyiLlfbQlR4xhPYkhOCoAu_YZ6ZXW_p65NRA>
    <xmx:1KAwaGmnq5tGUkHLPLhQOjIA9i6fenJQyCGUPsj3GwITBJx0FTdFXg>
    <xmx:1KAwaA1ijh85BDekUMHumE6iC4qgl_cvcwjHJux2SlOUL_RgFliXbg>
    <xmx:1KAwaNsJmoZAzeutmve34PdcPAQpr0mtNRgnUjR1NpUBNNJjZvehXA>
    <xmx:1KAwaJ12mijHtSiqgD2ETp4gj3rCZtwT6WjYDMWmuNpB0lGxXQ44b_Fm>
Feedback-ID: i876146a2:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 84E952CC007F; Fri, 23 May 2025 12:22:44 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 23 May 2025 12:22:24 -0400
From: "Zack Weinberg" <zack@owlfolio.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 'linux-man' <linux-man@vger.kernel.org>
Message-Id: <8862ae0c-f4f6-410c-95ce-fc5825ae20ca@app.fastmail.com>
In-Reply-To: <20250518000146.sh7pskbkisveuv4g@illithid>
References: <mp3cwzbgvqw2m53jykhfz5xloihxcr5v5bwynig3cxrsmmpqhe@eaok355sjksi>
 <87ecwnf6p1.fsf@gmail.com>
 <j5fti375euce3gnkjsg5fatz2vuzgx3zekxipx3q56fdkmlf4e@ylv2quyckhg2>
 <20250518000146.sh7pskbkisveuv4g@illithid>
Subject: Re: Learning man(7)
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

[off topic for libc-alpha]

On Sat, May 17, 2025, at 8:01 PM, G. Branden Robinson wrote:
> [shameless promotion of (in part) my own work follows]
>
> I've tried hard over the past several years to make man(7) easy to
> acquire.  I'm attaching a PDF of the groff_man_style(7) man page
> (rendered with the forthcoming groff 1.24), which attempts the oft-
> questioned objective of serving as both tutorial and a reference. I
> seldom receive feedback on it, which means either that it's flawless
> or no one reads it.

I regret to say that I think most people who attempt to read this
document will give up on it after only a few sentences.  It is densely
written, presents its material in a sequence that doesn't make any sense
to me, and frequently uses jargon that I only understand because I
already know the essentials of the troff markup language.

I suggest that you should look at the overall structure of the Texinfo
manual (https://www.gnu.org/software/texinfo/manual/texinfo/html_node/),
and reorganize your guide along similar lines.  The Texinfo manual is
not perfect, but it was written with a lot of care and attention
put into organizing the material into a sequence that will make sense to
someone who is brand new to writing documentation in a markup language.

Avoid forward references to definitions of terms at almost any cost.
Forward references to sections that will go into more detail on something
that was just mentioned are often a good idea, but make sure enough
detail was presented up front that a beginner knows enough to keep
reading!  Relegate information that most people don't need to know, such
as the specifications of deprecated macros and the portability quirks of
Solaris troff, to the very end.

Whenever possible, avoid troff-specific jargon; for example, instead of
talking about "input traps", which are a detail of how troff macros work
internally, say something like

.SH [heading-text]
    Set _heading-text_ as a section heading.  If .SH appears by itself
    on a line, the next normal line of input is used as _heading-text_.

Don't try to avoid repeating this language; write it out in full for
every macro that has this property.  In general, decompress your
language; take the time to spell everything out rather than relying on
words with precise definitions that readers might not already know,
whether or not they are defined in the text.  (Rudolf Flesch wrote two
excellent books on how to do this well, *The Art of Readable Writing* and
*The Art of Plain Talk*, which I recommend to everyone seeking to improve
their technical writing.)

Add lots and lots and lots of examples.

For a concrete example of the kind of change I would suggest you make,
take these sentences near the beginning:

    A roff document can contain control lines, which start with a dot (.)
    or neutral apostrophe ('). All other input lines are text lines to be
    formatted. A macro collects control and/or text lines to ease document
    composition.

There is a _ton_ of implicit knowledge referenced by these sentences.
Much of that knowledge does appear later in the document, but a reader
who isn't already familiar with troff won't be able to get that far,
because they need all that knowledge to continue reading!  I would
expand those sentences to all of this:

    The roff markup language is line-oriented; with a few exceptions,
    every construct consists of one or more whole input lines.  As usual
    for Unix programs, all input lines, including the very last one,
    must be ended with the "newline" character, ASCII LF (U+000A);
    the "carriage return" character (U+000D) should not be used.

    Each input line of a roff document is either a _text line_ or a
    _control line_.  Control lines start with either a dot (.) or a
    neutral apostrophe ('); the only difference is that control lines
    beginning with . sometimes force a line break in the output.
    Generally you should write all your control lines beginning with .,
    and then change dots to apostrophes only when you discover
    undesirable line breaks. Lines beginning with any other character
    are text lines.

    Most control lines invoke either a _macro_ or a primitive _request_,
    by naming the macro or request immediately after the . or the '.
    This will have some concrete effect on the typeset output, as we will
    explain throughout the rest of this guide.  A control line that
    _doesn't_ invoke anything has no direct effect, but can still
    be useful; we will also discuss this more below.

        This is a text line.
        .SH \" This is a control line, invoking the SH macro.
        .br \" This is a control line, invoking the br request.
        .   \" This is a control line that doesn't invoke anything.

    The distinction between macros and requests is usually not important
    unless you are writing your own "macro package."  However, by
    convention, macros have UPPERCASE names, and primitive requests have
    lowercase names.  Because roff is a very old markup language, the
    names are usually very short---one or two characters at most.  (GNU
    groff supports longer names but other implementations do not.)

    Both macros and requests frequently take _arguments_, consisting of
    the rest of the text on the control line, after their name.  For
    readability and ease of editing, control lines can be extended onto
    multiple physical input lines by putting a backslash (\, U+005C) at
    the very end of each input line but the last one.  (This also works
    for text lines, but it is almost never _needed_ for text lines.)

        .SH Arguments to the SH macro: text of a section heading.

        .SS A very long subsection heading that was split onto \
            two physical input lines.

    Backslash can also appear in the middle of a line, in which case
    it begins an _escape sequence_.  One escape sequence already
    appeared in the first group of examples above: \", which begins
    a comment--the \" and everything after it on that input line are
    discarded and have no effect on the output.  Thus, in those
    examples, the SH macro and the br request did not receive any
    arguments.

    Another escape sequence is \&, which inserts a "dummy character".
    It has no visible effect on the formatted output, but you can use
    it to begin a text line with either . or ':

        \&. This is a text line whose text begins with '.'.

    More escape sequences will be described below.

    For maximum portability, roff input should be restricted to ASCII;
    see the "Portability" section for precise details of what characters
    are permissible, and the "Special character escapes" section for how
    to typeset non-ASCII characters.  GNU groff supports input in Unicode
    (by means of the preconv(1) helper program).

Naturally, one can then remove *some* of this detail from later sections.
However, keep in mind that a little bit of repetition helps to embed
information in the reader's mind.

I hope this is useful to you.

zw

