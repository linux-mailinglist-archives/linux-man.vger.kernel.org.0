Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CE4857F0EA
	for <lists+linux-man@lfdr.de>; Sat, 23 Jul 2022 20:16:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233758AbiGWSQM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jul 2022 14:16:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231414AbiGWSQM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jul 2022 14:16:12 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 190B413CE3
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 11:16:09 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oFJfa-001pzX-Vx; Sat, 23 Jul 2022 20:16:07 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oFJfa-006lLf-OD; Sat, 23 Jul 2022 20:16:06 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oFJfa-0000Hj-NN; Sat, 23 Jul 2022 20:16:06 +0200
Date:   Sat, 23 Jul 2022 20:16:06 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, g.branden.robinson@gmail.com
Subject: Re: Linux man-pages Makefile portability
Message-ID: <Ytw65nGl1qouSU5R@asta-kit.de>
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Fri, Jul 22, 2022 at 07:37:14PM +0200:
> On 7/22/22 18:59, Ingo Schwarze wrote:
>> Alejandro Colomar wrote:

>>> I considered[6] using man3type, and used man3 in the end just because
>>> when in doubt I opted for the smallest change.  Knowing that it breaks
>>> mandoc(1), I'll definitely move to <man3type/>.

>> I didn't mean to say man3/id_t.3type "breaks mandoc".  Quite to the
>> contrary, the above quotation explains that mandoc copes with it.

> Yeah, I didn't mean break as in "mandoc(1) goes nuts, or crashes", but 
> rather as in "it doesn't do what I wanted it to do".

Even that is an overstatement.  The difference between being in section 3p
only and being in both section 3p and 3 is barely user-visible.

Here is a manual page that is in section 3p and in section 3p only,
on OpenBSD-current:

   $ man -w warnings
  /usr/share/man/man3p/warnings.3p
   $ grep  '^\.TH' $(man -w warnings)
  .TH warnings 3p "2021-03-02" "perl v5.32.1" "Perl Programmers Reference Guide"

But lo and behold:

   $ man -s 3 -w warnings
  /usr/share/man/man3p/warnings.3p

Mandoc still finds the page in section 3 because "3" is a substring of "3p",
and that not only makes sense from the string processing perspective
but also from a logical perspective because section 3p is a particular
corner of section 3 after all.

To cause mandoc to *not* find the page in section 3, the user would have
to type something like

   $ man -k 'sec~3$' -a warnings
  man: nothing appropriate

Even i don't normally use such advanced syntax (regex matching on section
names using the "sec" search keyword and the explicit regex operator
and the -a logical operator for the conjunction of two search criteria).
I doubt whether man-db even supports similar features...

[...]
>> The system making the heaviest use of section suffixes i'm aware of
>> is Solaris:
>> 
>>    > uname -a
>>    SunOS unstable11s 5.11 11.3 sun4u sparc SUNW,SPARC-Enterprise
>>    > ls /usr/share/man/
>>    entities      man3dat       man3mvec      man3sysevent    man4b
>>    fr            man3dax       man3nsl       man3tcl         man5
>>    fr.ISO8859-1  man3devid     man3nvpair    man3tecla       man5oldap
>>    fr.UTF-8      man3devinfo   man3oldap     man3tiff        man5openssl
>>    it            man3dlpi      man3openssl   man3tsol        man7
>>    it.ISO8859-1  man3dns_sd    man3p         man3uuid        man7d
>>    it.UTF-8      man3elf       man3pam       man3volmgt      man7fs
>>    ja_JP.UTF-8   man3exacct    man3pcap      man3x           man7i
>>    man-index     man3ext       man3perl      man3x11         man7ipp
>>    man.cf        man3f         man3pi        man3xau         man7m
>>    man1          man3fcoe      man3picl      man3xaw         man7openssl
>>    man1b         man3fm        man3picltree  man3xcb         man7p
>>    man1c         man3fstyp     man3plot      man3xcomposite  man8
>>    man1m         man3gen       man3pool      man3xcurses     man8oldap
>>    man1oldap     man3gss       man3proc      man3xcursor     man8s
>>    man1openssl   man3hbaapi    man3project   man3xevie       man9
>>    man1s         man3head      man3rad       man3xext        man9e
>>    man1t         man3iscsit    man3reparse   man3xi          man9f
>>    man2          man3kstat     man3resolv    man3xinerama    man9p
>>    man3          man3kvm       man3rpc       man3xmu         man9s
>>    man3archive   man3layout    man3sasl      man3xnet        pl
>>    man3c         man3ldap      man3scf       man3xrandr      pl.ISO8859-2
>>    man3c_db      man3lgrp      man3sec       man3xss         pl.UTF-8
>>    man3cc4       man3lib       man3sip       man3xt          ru.KOI8-R
>>    man3cfgadm    man3m         man3slp       man3xtsol       ru.UTF-8
>>    man3cmi       man3mail      man3snmp      man3xtst        zh_CN.UTF-8
>>    man3commputil man3malloc    man3socket    man3xv
>>    man3contract  man3mlib      man3srpt      man3xxf86vm
>>    man3cpc       man3mp        man3ssh2      man3zonestat
>>    man3curses    man3mpapi     man3stmf      man4

> Wow!
> Although it's interesting to know that this list exists:
> I can check it when trying to come up with a section name.

I would somewhat advise against that.  While i do think that consistency
is good *if* you decide to use a section suffix, i'd still recommend
to use section suffixes sparingly, at least in operating systems
that use them sparingly now.  They provide relatively little value,
make the top directory of the manpath larger and less readable,
and they are in particular *not* well suited to moving stuff out of
the non-suffix directories that users may not wish to see by default.
For example, suppose you created a directory man3py to document
python library functions.  As explained above, these pages will *still*
show up even when people type "man 3" or "man 3p" rather than "man 3py".

> I guess Illumos shares this subsectioning scheme.

More or less, according to
https://src.illumos.org/source/xref/illumos-gate/usr/src/man/ -
it's not identical though.

> Do you know from the top of your head if any of those is dedicated to 
> constants such as NULL, PATH_MAX, or BUFSIZ?

I doubt it, for two reasons.  On the one hand, my impression is that
at least in Solaris, section suffixes are not so much used for
logical subdivision of sections but more according to provenance;
for example, man1b is for BSD compat features, man1s is for commands
specific to SunOS, man3c is for libc, man3ext is for an "extended
library", man3p is for the Sun performance library (available for
both C and FORTRAN 95), and so on.

On the other hand, naming manual pages after symbolic constants
or after type names is so unsual that i doubt any scheme exists
for that.  The most widely used way to look up manual pages
by the names of symbolic constants or type names probably is
using macro keys as implemented in the mandoc version of apropos(1).
That is used by most FreeBSD, OpenBSD, Alpine Linux, and Void Linux.
I admit that doesn't qualify as "widely used", but "most widely used"
is probably true all the same.  ;-)

Yours,
  Ingo
