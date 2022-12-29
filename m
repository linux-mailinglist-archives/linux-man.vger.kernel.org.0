Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72C3E6589C1
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 07:42:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231250AbiL2GmF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 01:42:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbiL2GmD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 01:42:03 -0500
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EE43EE0F
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 22:42:02 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 4AB6A5C02C2;
        Thu, 29 Dec 2022 01:42:00 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Thu, 29 Dec 2022 01:42:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm1; t=1672296120; x=1672382520; bh=6Fv8zpF41l
        H/6hFZ+2rMik3JYrlUeg8t569QaCxgQcc=; b=l1o10rkoRy3pwSMEhkD07I+rcs
        RbTsQdO+6ReYegzCq5IyCW43fewOjDtKTDOrua8Z99odVIIEPC75aOkGQuITfrqj
        Eih8tNxIA0hO4R/tzYLlOiWJ7I/FWDDGunV5Knrqw6hg+2oJ+fN+r6RMQmE4i+pG
        uisR8jr5g5tHqbwWOBhQLMRDpjqze+jBWLsr9EnAyS5wpAHmVjX0t7EAqqM+AbX3
        SNQagy+qJdftBvgtnpcs5kXD2hdRzpzTaVFC0GHcCMb9e3iVEt0uWpCZR5jYjF8r
        XiRU5QeJ2wghj48yXjym3DmS/MDilkZlEVQPnjMuJ2EI0CNY8XD8jOlXIUog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; t=1672296120; x=1672382520; bh=6Fv8zpF41lH/6hFZ+2rMik3JYrlU
        eg8t569QaCxgQcc=; b=UuWSXQw+n7+7OLy4YVRZMilx+lnMYJ21KPF4xfFLI+RX
        UhTiMw/fojKyoydy0ml++eMwU7oUmUZdZgXbWNYpbzuO+am1vX+8oCnylD04s+TG
        NONKgxhT5fuqeHbA1FuUzdO8UrHjjUZLQcfioqKPObFlWih8Yujyllo50qQdQsBW
        XNB1LxwMuSRSOBK2AYEupGp+f2iGgn4QHMiqSn2ta13ga3B0iFHxixnkU0u2mfQc
        wtGTneTiCqM2KaKUkMYAlMHct42pkuufdHpYPlvW8F4DsYix/7zjiWybBOQhqOtn
        jMg6e0ieTjMi2cgApQ21dLH1wRrfOuj6fXmv0sEhBA==
X-ME-Sender: <xms:tzatYzKEyB3yKHYbT5ZKJaHJQALSjkMLYmptVhZjjarEeRcwrMunhQ>
    <xme:tzatY3JRM1ceG-vRqnh4MEQL6Ldm256bGdAkQz46nI-XMhgPTAqd1TKBEnm4IPiph
    muHCTugW8gWhy7Ev-A>
X-ME-Received: <xmr:tzatY7txfiTqF-12O1IP_R1AsSrcMQT-ReTUWXzBS8EkAixkiwrmp2CmDfojjyIruP7-dCdj7GxHyaeny49R-DWkE6uN9QADKTLD2mbmYuI2MQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrieefgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffkffhvfevufgjfhgfgggtsehttdertddtrefgnecuhfhrohhmpegkrggtkhcu
    hggvihhnsggvrhhguceoiigrtghksehofihlfhholhhiohdrohhrgheqnecuggftrfgrth
    htvghrnhepgeeggeekgeekudevuefhkeevhedufeeuuedtkeelieegvdfhvdegjeeglefh
    feffnecuffhomhgrihhnpehpohhrthejtddrnhgvthenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeiirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:uDatY8baS2tlRFUuwdTDj138DpV-HNAV070MQVOfg_VsdORgUaoZYA>
    <xmx:uDatY6bOpXQW8fLhyf97rGow98f7NozA9yK9ru-ZmFhnEq6goSX_XA>
    <xmx:uDatYwC9MJjwLNjPpXxrUcpGIswUGp_Jg7LnzM3dsgKVcTttJyvPnQ>
    <xmx:uDatY5nKgbnDI3nE_BcEKAJLnJZ18iTAFWlB1dGJMfuDl6yvwXFF0w>
Feedback-ID: i876146a2:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Dec 2022 01:41:59 -0500 (EST)
Date:   Thu, 29 Dec 2022 01:39:58 -0500
Message-ID: <ypikv8luogqp.wl-zack@owlfolio.org>
From:   Zack Weinberg <zack@owlfolio.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
        Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
In-Reply-To: <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
        <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
        <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
        <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
        <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
        <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
        <ypikk02xv09c.fsf@owlfolio.org>
        <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
        <ypikwn6uag11.fsf@owlfolio.org>
        <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=ISO-2022-JP
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 14 Dec 2022 05:47:12 -0500, Alejandro Colomar wrote:
> On 12/14/22 03:13, Zack Weinberg wrote:
> > The scanf numeric conversions could be fixed with a one-sentence edit to
> > the C standard: change the last sentence of http://port70.net/~nsz/c/c11/n1570.html#7.21.6.2p10
> > from “If this object does not have an appropriate type, or if the result
> > of the conversion cannot be represented in the object, the behavior is
> > undefined” to “If this object does not have an appropriate type, the
> > behavior is undefined.  If the result of the conversion cannot be
> > represented in the object, the execution of the directive fails; this
> > condition is a matching failure.”  And, even if the C committee doesn’t
> > want to make that change, open-source C libraries can and should do it
> > unilaterally, as a documented implementation extension.  I think that’s
> > a better plan than declaring most uses of *scanf “deprecated.”
> 
> Yeah, if you have plans to fix it, I'm fine removing the deprecation now. :)

To be clear, I personally don’t have plans to do any of the actual
programming or standard-changing work involved here.  :-)

> > Yes, I think it would be fair to say that it is almost always a mistake
> > to use the scanf variants that read directly from a FILE.  The issue
> > here is, at its root, that people new to C _expect_ a scanf call to read
> > an entire line of input, but it doesn’t. This is especially problematic
> > for interactive input ― they try to use plain scanf to read numeric
> > input, don’t realize that `scanf("%d", &arg)` doesn’t consume the \n in
> > the terminal’s line buffer _after_ the number, and get very confused
> > when a subsequent getchar() reads that \n instead of the ‘y’ or ‘n’ they
> > were expecting as a response to the _next_ prompt.  But it’s _also_ a
> > problem for error recovery, because scanf will stop in the middle of the
> > line when a matching failure occurs, and if you naively assumed it would
> > throw away the rest of the line, you get an error cascade.
> > 
> > The recommended practice to avoid this trap, is that you should use one
> > of the functions that _does_ read an entire line of input, i.e. fgets or
> > getline, and then parse the line as a string.  It would make sense for
> > the [f]scanf manpage to say that.
> 
> Please clarify; do you consider [v][f]scanf something that "we think
> we should never have added this in the first place, there’s no
> plausible way to fix it, but we have to keep it around for backward
> compatibility"?

_I_ wouldn’t have added them in the first place, but I care more than
the average about robustness in the face of unexpected input, even for
“throwaway” programs.  I doubt the C committee would be prepared to
say the same thing.  They _can_ be used legitimately, and they can
even be used in ways that meet my robustness standards if you go
to enough trouble.  It’s just that (IMNSHO) there are better ways to
reach those standards.

In terms of text for the [v][f]scanf manpage, maybe something like

[NOTES? BUGS?]
    When scanf() or fscanf() report a _matching failure_, all of the
    text that was matched successfully has still been read from
    _stdin_ or the _stream_ (respectively), and so have an
    unpredictable number of characters associated with the conversion
    that failed to match.  The latter characters are lost.  This may
    make it difficult to recover from invalid input.

    One way to make recovery easier is to separate reading from
    parsing: use fgets() or getline() to read an entire line of text
    into a string, then use sscanf() to parse the string.  If a
    _matching failure_ occurs, you can try sscanf() again with a
    different _format_; the equivalent is not possible using fscanf().

    _Successful_ calls to scanf() and fscanf() frequently consume
    either more, or fewer, characters from the input than was
    expected.  For example, assuming the next six characters readable
    from `stdin` are `"123\n a"‘, `scanf("%d", &val)` will consume the
    digits but _not_ the newline, and `scanf("%d\n", &val)‘ will
    consume the digits, the newline, _and_ the space.  Either of these
    is likely to cause trouble when mixing calls to scanf() with calls
    to fgets() or fgetc().  As above, it helps to read entire lines of
    text with fgets() or getline() and then parse them with sscanf().

> In short:
> 
> (1)  Numeric conversion specifiers are broken but can be fixed…

Yes.

> …and you plan to fix them.

No :)

>      (1.1)  I'll revert the deprecation warning now; since they are
> only broken because the _current_ standard and implementations are
> broken, but not by inherent design problems.

OK.

>      (1.2) When [someone fixes] the implementation to not be UB
> anymore, it will also make sense to revert the patch that removed
> the ERANGE error, since you'll need to report it.

Yes.

> (2)  For the string conversion specifiers, there are ways to use them
> safely.

Yes.

> and you plan to add a way to specify a size at runtime to the
> function,

No again :)

> so it will be even better in the future.  No action required.

Concur.

> (3)  [v][f]scanf seem to be really broken by design.  Please confirm.

See above.

If you remind me where to find the git repo for the manpages, I _may_
have time to write a patch for all this sometime next week.

zw
