Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20B5E4E1B5D
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 12:57:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232223AbiCTL6Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 07:58:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237373AbiCTL6Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 07:58:24 -0400
X-Greylist: delayed 929 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 20 Mar 2022 04:57:00 PDT
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AFB01B2C7E
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 04:57:00 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1nVtw9-00BGx0-NZ; Sun, 20 Mar 2022 12:41:29 +0100
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1nVtw8-003mJN-J3; Sun, 20 Mar 2022 12:41:29 +0100
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1nVtw8-0004Kn-VS; Sun, 20 Mar 2022 12:41:28 +0100
Date:   Sun, 20 Mar 2022 12:41:28 +0100
From:   Ingo Schwarze <schwarze@usta.de>
To:     g.branden.robinson@gmail.com
Cc:     alx.manpages@gmail.com, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com, groff@gnu.org
Subject: Re: Review incorrect man-pages commit
Message-ID: <YjcS6F8/0zOZVAVL@asta-kit.de>
References: <9e2a2f6d-d086-4570-2d22-f218fdb0e686@gmail.com>
 <20220320105236.zsjiafuru5hjk2uw@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220320105236.zsjiafuru5hjk2uw@localhost.localdomain>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden, hi Alex,

G. Branden Robinson wrote on Sun, Mar 20, 2022 at 09:52:37PM +1100:

> If you wanted to write this without using any aliases,
> you could adopt groff syntax.
> 
> +to "\fI[a\[a aa]\[a ga]\[a ad]\[a a^]\fP", that is,

While that is arguably neat, please be aware that it is significantly
less portable even when considering modern formatting software only.
For example, consider this:

   $ mandoc -Wall 
  ==\fI[a\[a aa]\[a ga]\[a ad]\[a a^]]\fP==  <enter> <Ctrl-D>
  mandoc: <stdin>:1:29: WARNING: invalid escape sequence: \[a a^]
  mandoc: <stdin>:1:22: WARNING: invalid escape sequence: \[a ad]
  mandoc: <stdin>:1:15: WARNING: invalid escape sequence: \[a ga]
  mandoc: <stdin>:1:8: WARNING: invalid escape sequence: \[a aa]
  [...]
  ==[a]==
  [...]

Arguably, not supporting the groff multi-argument form of \[]
character escape sequences might be a defect in mandoc, but for
now, that's how things are, so if you go that way, you have to
accept that some (even modern) formatters will drop the accented
characters from the output.

> I don't know if people regard that as more or less impenetrable.
> It is more _flexible_, and admits usage of diacritics/combining
> characters not envisioned by AT&T troff or ISO Latin-1.

That flexibility is precisely what makes the feature somewhat hard
to implement (though not impossible).  Admittedly, for typeset output,
any accent can be placed on any character, and for UTF-8 and HTML
output, zero-width combining Unicode codepoints can be used, but for
arbitrary output modes, the formatter would still have to contain
a complete table of all character-accent combinations to map them
to combined glyphs available in the output mode - and users would
probably have to accept that some combinations can't be rendered
in some output modes.  All that is less than ideal in manual pages,
where portability generally trumps typographic elegance.

> +.q !$%&\[aq]()*,/:;<=>?@[\[rs]]\[ha]\`{|}\[ti] .

I agree that nothing much is wrong with using the \[] variable
length character escape syntax in manual pages nowadays from
the point of view of portability.  Then again, i'm not convinced
that \[aq] is more readable than \(aq.  Why would it be?

Quite to the contrary, in the other example above, you wrote:

  ... \[a a^]\fP

forgetting the trailing square bracket; it should have been:

  ... \[a a^]]\fP

So my impression is the \[] syntax introduces additional opportunities
for markup bugs, if there is any difference to \( at all.

The rest of your message beautifully explains what is going on.

Yours,
  Ingo
