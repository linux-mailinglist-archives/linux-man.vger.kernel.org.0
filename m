Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C02B5829A8
	for <lists+linux-man@lfdr.de>; Wed, 27 Jul 2022 17:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232689AbiG0PcS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jul 2022 11:32:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232685AbiG0PcS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jul 2022 11:32:18 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82F961F61F
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 08:32:16 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oGj1B-001UKP-Vu; Wed, 27 Jul 2022 17:32:14 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oGj1B-006sLs-QP; Wed, 27 Jul 2022 17:32:13 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oGj1B-0002qg-PZ; Wed, 27 Jul 2022 17:32:13 +0200
Date:   Wed, 27 Jul 2022 17:32:13 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: man -M tcl (was: All caps .TH page title)
Message-ID: <YuFafSnjPxSCLP8B@asta-kit.de>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sun, Jul 24, 2022 at 06:17:40PM +0200:
> On 7/24/22 16:57, Ingo Schwarze wrote:

>> I even considered supporting aliases for manpath directories
>> in man.conf(5), something like being able to say
>> 
>>    alias tcl /usr/local/lib/tcl/tcl8.5/man/
>> 
>> in /etc/man.conf and then being able to say
>> 
>>    man -M tcl open

> Now we're talking.  I've long missed such a thing.
> Let's please discuss it.

Well, it wouldn't be the first time i implemented a feature in mandoc
that is not very urgently needed on OpenBSD but where the main need
came from Linux (or Illumos or MacOS, for that matter).

If it doesn't cause disruption or excessive complexity,
which seems unlikely in this case, we can consider it.

Do you think this would really get used in practice?

If so, as a motivation, it would be useful to collect a handful
of languages that would use this.  So far, i'm mostly aware of
Tcl and Tk.  And of the POSIX manual pages.

Of course i can't speak for man-db and other man(1) implementations.
Then again, even if other man(1) implementations would not follow,
maybe having -M aliases might be useful even in a single implementation.
Users of the others could still use shell aliases.

One side effect useful for myself would be that i could do, in man.conf(5),

  alias B /usr/share/man
  alias P /usr/local/man
  alias X /usr/X11R6/man

and then say

  man -kMB sha256

when i only want to base system pages and be undisturbed by ports
pages - right now, i type "-M /usr/share/man" relatively often.

Or say

  man -MP:B

to play with precedence.

> I wondered for a long time what happens if you create subdirs within a 
> man? section.  How do man(1)s handle </usr/share/man/man3/python/foo.3>?

On *BSD systems, that typically means:

  The architecture-specific library function foo(3)
  for the "python" hardware architecture.

Here are a few examples from OpenBSD:

  /usr/share/man/man1/sparc64/mksuncd.1
  /usr/share/man/man2/armv7/arm_sync_icache.2
  /usr/share/man/man2/i386/i386_iopl.2
  /usr/share/man/man3/octeon/cacheflush.3
  /usr/share/man/man3/sgi/get_fpc_csr.3
  /usr/share/man/man4/alpha/irongate.4
  /usr/share/man/man4/amd64/mpbios.4
  /usr/share/man/man4/luna88k/cbus.4
  /usr/share/man/man4/macppc/openpic.4
  /usr/share/man/man4/powerpc64/opalcons.4
  /usr/share/man/man4/riscv64/sfgpio.4
  /usr/share/man/man5/sparc64/ldom.conf.5
  /usr/share/man/man8/hppa/boot.8
  /usr/share/man/man8/macppc/pdisk.8
  /usr/share/man/man8/sgi/sgivol.8
  /usr/share/man/man8/sparc64/ldomctl.8

So, lets assume i'm on a amd64 machine and want to learn how
logical domains (a virtualization feature implemented in
SPARC hardware) are configured:

   $ arch
  OpenBSD.amd64
   $ man ldom.conf
  man: No entry for ldom.conf in the manual.
   $ man -S sparc64 ldom.conf
  [...]
  NAME
     ldom.conf  Logical Domain configuration
  [...]

Note that i said -S there, not -s nor -M.

So i advise against doing that for python: the namespace is already
taken for a different purpose.

Using /usr/share/man/python/man3/foo.3 would be similarly bad,
that usually means:

  The translation of /usr/share/man/man3/foo.3
  into the natural language "python".

Typical examples on OpenBSD:

  /usr/local/man/ja/man1/w3m.1
  /usr/local/man/pt_BR/man6/wesnoth.6
  /usr/local/man/de/man1/dvipdf.1

> Would your -M require that the pages live in a separate path?
> Or could it support subpaths?

The directory -M points to needs to contain the usual man1/ man3/
man5/ etc. subdirectories.  Where exactly you put that doesn't
matter for man(1), but i strongly advise against putting it into
/usr/share/man because all the namespace in there is already
taken for other purposes, and putting it in there anyway is likely
to confuse tools like makewhatis(8), mandb(8), catman(8),
and apropos(1).

If a language is so large that it comes with a whole suite of manual
pages (as ooposed to a language like awk(1) small enough to be
documented in a single page), then that language is likely to
already have its own directory for data files, typically somewhere
below /usr/share/.  Maybe it even has its own directory below
/usr/share/doc/ already.  For example, /usr/share/doc/python
already exists on Debian, so /usr/share/doc/python/man/man[1-5]/...
might one be reasoable choice, albeit certainly not the only option.

Yours,
  Ingo
