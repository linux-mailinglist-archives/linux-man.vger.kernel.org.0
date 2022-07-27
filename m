Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 114AC582A3D
	for <lists+linux-man@lfdr.de>; Wed, 27 Jul 2022 18:05:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232605AbiG0QFm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jul 2022 12:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233872AbiG0QFm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jul 2022 12:05:42 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACC812CDF8
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 09:05:38 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oGjXU-001Yup-AO; Wed, 27 Jul 2022 18:05:36 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oGjXT-006sNH-KQ; Wed, 27 Jul 2022 18:05:35 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oGjXT-00030i-Je; Wed, 27 Jul 2022 18:05:35 +0200
Date:   Wed, 27 Jul 2022 18:05:35 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     g.branden.robinson@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: All caps .TH page title
Message-ID: <YuFiT79dQz+nDgmO@asta-kit.de>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <20220724154447.us3vsmicaw52v4j6@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724154447.us3vsmicaw52v4j6@illithid>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

G. Branden Robinson wrote on Sun, Jul 24, 2022 at 10:44:47AM -0500:
> At 2022-07-24T16:57:19+0200, Ingo Schwarze wrote:

>> But dismissing decade-old *BSD standards like the use of /usr/ for the
>> base system and /usr/local/ for packages as a standard violation, and
>> promoting /opt/ which is firmly a Linux-only invention,

> Oh, no it's not.  I remember that thing from Solaris 2.3 or 2.4.
> Here's a slightly later source.
> 
> https://docs.oracle.com/cd/E19455-01/805-6331/fsadm-17/index.html

Oops, thanks for setting me right.

Confirmed:

   > uname -a
  SunOS unstable11s 5.11 11.3 sun4u sparc SUNW,SPARC-Enterprise
   > ls -al /opt
  total 2613
  drwxr-xr-x 12 root other      13 Dec 31 2020 .
  drwxr-xr-x 19 root root       22 Aug 17 2018 ..
  drwxr-xr-x  4 root other       4 Feb 10 2015 bop
  drwxr-xr-x 25 root bin        29 Dec  1 2017 csw
  drwxr-xr-x 10 root sys        11 Aug 17 2018 developerstudio12.5
  drwxr-xr-x 10 root sys        11 Aug 17 2018 developerstudio12.6
  drwxr-xr-x  3 root root        3 Feb 10 2015 local
  drwxr-xr-x 12 root sys        12 Jan 22 2015 solarisstudio12.3
  drwxr-xr-x 10 root sys        11 Dec 22 2015 solarisstudio12.4
  drwxr-xr-x 13 root sys        13 Jan 22 2015 solstudio12.2
  drwxr-xr-x 13 root sys        15 Oct 29 2015 SUNWspro
  -rw-------  1 root root  1311633 Oct 29 2015 uninstall_Sun_Studio_12.class
  drwxr-xr-x  3 root root        3 Feb 18 2015 VRTS

It doesn't look as if modern Oracle Solaris uses it very extensively,
but still, it does exist.

[...]
> Under this umbrella, the Linux kernel is effectively under the BSD
> license.

Except that free software projects cannot copy from it - that's
quite a big BUT since allowing *everybody* to copy the code for
any purpose is the central idea of the BSD license.  ;-)

[...]
> The BSD camp did ultimately win the copyleft argument after all.

I'm not so sure about that.  The idea of the BSD license is to
allow all uses that can be licensed to others according to the Berne
Convention, retaining only those rights - essentially the moral rights,
like being known as the author, and abuse of the Works for slandering
the author being prohibited - that are inalienable in the first place
according to the Berne Convention.

Even if in effect, the Copyleft aspect of the GPL is not usually
enforced against Foundation members, GPL code is far from as free
as the Berne Convention would permit it to be, and far from as free
as if it were under a BSD license.

So essentially, you say that in practice, the GPL fails to attain
the goals RMS designed it for, and i say that all the same, it has
some serious and (hopefully) unintended detrimental side effects.

I can't say i'm too happy with that.
I certainly don't regard it as a win.
It looks more like a lose-lose situation to me.

But i don't think we can do much about that.  Groff is still
usable for most users without too much pain.  Unless i want to
contribute significant amounts of code, even i could do so.
And to be fair, even if i wanted to contribute large amounts of
code, the GPL would *not* prevent me from doing that - the thing
the would stop me is the FSF CLA, which is an entirely different
beast.

Nuff' digression!
  Ingo
