Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89A1E57E4ED
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 18:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231164AbiGVQ7a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 12:59:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbiGVQ73 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 12:59:29 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A02A31201
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 09:59:27 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oEvzo-000r8r-Tt; Fri, 22 Jul 2022 18:59:25 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oEvzo-006kNb-OE; Fri, 22 Jul 2022 18:59:24 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oEvzo-0000c5-NC; Fri, 22 Jul 2022 18:59:24 +0200
Date:   Fri, 22 Jul 2022 18:59:24 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, g.branden.robinson@gmail.com
Subject: Re: Linux man-pages Makefile portability
Message-ID: <YtrXbDo5NVxNT/cb@asta-kit.de>
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Thu, Jul 21, 2022 at 04:17:18PM +0200:
> On 7/3/22 23:44, Alejandro Colomar wrote:

>> [added Branden, as he was involved in discussions regarding man3type;
>> Branden, you might want to visit this thread from the begining, as I 
>> only copied the minimum to reply; it's in linux-man@]

>> On 6/20/22 15:49, Ingo Schwarze wrote:
> [...]
>>> That said, other projects are of course free to have such pages if
>>> they want to.  The mandoc(1) program is also able to handle paths like
>>> "man3/id_t.3type".  It will consider that page to be *both* in section
>>> "3" (as specified by the directory name) and in section "3type" (as
>>> specified by the file name and by the .TH macro).  I would consider
>>> it better style to keep section names consistent, i.e. to use either
>>> "man3/id_t.3" .TH id_t 3 or "man3type/id_t.3type" .TH id_t 3type,
>>> but it's not a big deal: since many systems (in particular various
>>> Linux distros) suffer from such inconsistencies, handling such
>>> inconsistencies gracefully is an important feature that certainly
>>> won't get removed.

>> I considered[6] using man3type, and used man3 in the end just because 
>> when in doubt I opted for the smallest change.  Knowing that it breaks 
>> mandoc(1), I'll definitely move to <man3type/>.

I didn't mean to say man3/id_t.3type "breaks mandoc".  Quite to the
contrary, the above quotation explains that mandoc copes with it.

However, when it comes to robustness with respect to *other* man(1)
implementations apart from mandoc and man-db, i suspect the most
portable and reliable way is using man1 - man9 only with no suffixes,
consistent suffixes like "man3type/id_t.3type" are probably medium
portability and medium reliability, and inconsistent suffixes
like "man3/id_t.3type" and "man3type/id_t.3" are likely the least
portable and the most fragile.

So your change is an improvement.

The system making the heaviest use of section suffixes i'm aware of
is Solaris:

  > uname -a
  SunOS unstable11s 5.11 11.3 sun4u sparc SUNW,SPARC-Enterprise
  > ls /usr/share/man/
  entities      man3dat       man3mvec      man3sysevent    man4b
  fr            man3dax       man3nsl       man3tcl         man5
  fr.ISO8859-1  man3devid     man3nvpair    man3tecla       man5oldap
  fr.UTF-8      man3devinfo   man3oldap     man3tiff        man5openssl
  it            man3dlpi      man3openssl   man3tsol        man7
  it.ISO8859-1  man3dns_sd    man3p         man3uuid        man7d
  it.UTF-8      man3elf       man3pam       man3volmgt      man7fs
  ja_JP.UTF-8   man3exacct    man3pcap      man3x           man7i
  man-index     man3ext       man3perl      man3x11         man7ipp
  man.cf        man3f         man3pi        man3xau         man7m
  man1          man3fcoe      man3picl      man3xaw         man7openssl
  man1b         man3fm        man3picltree  man3xcb         man7p
  man1c         man3fstyp     man3plot      man3xcomposite  man8
  man1m         man3gen       man3pool      man3xcurses     man8oldap
  man1oldap     man3gss       man3proc      man3xcursor     man8s
  man1openssl   man3hbaapi    man3project   man3xevie       man9
  man1s         man3head      man3rad       man3xext        man9e
  man1t         man3iscsit    man3reparse   man3xi          man9f
  man2          man3kstat     man3resolv    man3xinerama    man9p
  man3          man3kvm       man3rpc       man3xmu         man9s
  man3archive   man3layout    man3sasl      man3xnet        pl
  man3c         man3ldap      man3scf       man3xrandr      pl.ISO8859-2
  man3c_db      man3lgrp      man3sec       man3xss         pl.UTF-8
  man3cc4       man3lib       man3sip       man3xt          ru.KOI8-R
  man3cfgadm    man3m         man3slp       man3xtsol       ru.UTF-8
  man3cmi       man3mail      man3snmp      man3xtst        zh_CN.UTF-8
  man3commputil man3malloc    man3socket    man3xv
  man3contract  man3mlib      man3srpt      man3xxf86vm
  man3cpc       man3mp        man3ssh2      man3zonestat
  man3curses    man3mpapi     man3stmf      man4

Inside these directories, they are *mostly* using the convention
"keep both section names consistent", so i do think that is good
to follow.  Even Solaris isn't perfect in that respect, though,
they have, for example,

  /usr/share/man/man3cc4/cartpol.3

but on first sight, i only found about two dozen such examples.

> I fixed it:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=451a27a78d51973b01bfb5d3b1e0ec081d9161e1>

I did not scrutinize your change in detail, but had a brief look at it
and did not see any obvious problems.

> And Debian seems to work fine with man3type/ and man2type/ out of the 
> box, so I prefer it this way.  I hope that other projects follow the 
> example; and that packagers/distributions also create subsection 
> directories, and don't undo my work.

On Linux, undoing it would make very little sense to me because i expect
that all man(1) programs commonly used on Linux can cope with section
suffixes, and in particular with consistent use of session suffixes.
Besides, undoing it properly is hardly possibly for a packager.
If would require changing all these:

 - directory names
 - file names
 - .TH macros
 - and manual page cross references

So for better or worse, the only sane option for a packages is to follow
your lead.

Yours,
  Ingo
