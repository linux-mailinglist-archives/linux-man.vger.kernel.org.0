Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A5DB6DB18C
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 19:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbjDGRUU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 13:20:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbjDGRUT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 13:20:19 -0400
X-Greylist: delayed 760 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 07 Apr 2023 10:19:46 PDT
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2627149C5
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 10:19:45 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1pkpYF-00Ggsd-6K; Fri, 07 Apr 2023 19:07:03 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1pkpYD-001FDp-VF; Fri, 07 Apr 2023 19:07:02 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1pkpYE-006t8g-6x; Fri, 07 Apr 2023 19:07:02 +0200
Date:   Fri, 7 Apr 2023 19:07:02 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     g.branden.robinson@gmail.com, alx.manpages@gmail.com,
        dirk@gouders.net, cjwatson@debian.org, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff@gnu.org
Subject: Re: man page rendering speed
Message-ID: <ZDBNtoy9f0XOzvot@asta-kit.de>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid>
 <83fs9bohog.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83fs9bohog.fsf@gnu.org>
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Eli,

Eli Zaretskii wrote on Fri, Apr 07, 2023 at 06:06:39PM +0300:
> G. Branden Robinson wrote on Date: Fri, 7 Apr 2023 09:43:19 -0500

>> ...which brings me to the other factor, of which I'm more confident: man
>> page rendering times are much lower than they were in Unix's early days.
>> 
>> On my system, all groff man pages but one render in between a tenth and
>> a fortieth of a second.  The really huge pages like groff(7),
>> groff_char(7), and groff_diff(7) are toward the upper end of this range,
>> because they are long, at ~20-25 U.S. letter pages when formatted for
>> PostScript or PDF, or have many large tables so the tbl(1) preprocessor
>> produces a lot of output.
>> 
>> The outlier is groff_mdoc(7) at just over one-third of a second.

> Some people consider 0.1 sec, let alone 0.3 sec, to be long enough to
> be annoying.
> 
> Also, did you try with libpng.3 or gcc.1?

For what it's worth, on my notebook the largest page is ffmpeg-all(1)
at about 1.6 Megabyte man(1) source code, 42k lines, 182k words,
1.65 Megabyte rendered to UTF-8 terminal output.

Rendering that beast takes three and a half seconds on my notebook
with groff and two thirds of a second with mandoc(1), i.e. mandoc
is more than five times faster on this page than groff.

The largest mdoc(7) page here happens to be openssl(1) at 193 Kilobyte
of mdoc(7) source code, 5k lines, 27k words, 265 Kilobyte of UTF-8
terminal output in rendered form.  It takes 1.3 seconds with groff and
on tenth of a second with mandoc, so mandoc is faster by a factor of
thirteen in this case.  In general, the speed gain of mandoc is much
larger for mdoc(7) than for man(7) input because mandoc refrains from
using recursion in the implementation of the mdoc(7) language.

Relative speed gains also tend to be larger for large pages than for
small ones, so these factors of five and thirteen are on the upper
end of the spectrum.  Then again, who cares about rendering speeds
for small pages, apart from Michael Stapelberg when he pre-renders
stuff he is planning to serve on manpages.debian.org?

In fact, speed was among the design goals of mandoc when development
started about 15 years ago (though the goal was secondary to the goals
of BSD licensing, ease of use, and security, and in the meantime,
the goal of high-quality HTML output has also become more important).

Consequently, people who highly value speed in manual page display
might consider mandoc as an option for a manual page searching,
formatting and display system.  Several Linux distributions nowadays
offer the configuration option of using it out of the box (including
Fedora, openSUSE and Arch), and some even use it by default (including
Alpine, Void, illumos and, of course, almost all BSD systems).

Of course, it is *not* a replacement for groff.  Mandoc only provides
rather poor PDF output and it can only format manual pages, not
general-purpose roff(7) documents.

Yours,
  Ingo
