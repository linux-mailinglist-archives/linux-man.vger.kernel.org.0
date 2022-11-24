Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C67E637F69
	for <lists+linux-man@lfdr.de>; Thu, 24 Nov 2022 20:13:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiKXTN5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Nov 2022 14:13:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbiKXTN4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Nov 2022 14:13:56 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1102E87552
        for <linux-man@vger.kernel.org>; Thu, 24 Nov 2022 11:13:53 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id y7rvoMqYuMsxDyHfUoOb6u; Thu, 24 Nov 2022 19:13:52 +0000
Received: from [10.0.0.5] ([184.64.124.72])
        by cmsmtp with ESMTP
        id yHfUowzeK5QfLyHfUo27ON; Thu, 24 Nov 2022 19:13:52 +0000
X-Authority-Analysis: v=2.4 cv=SuCDVdC0 c=1 sm=1 tr=0 ts=637fc270
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=IkcTkHD0fZMA:10 a=t-IPkPogAAAA:8 a=8pif782wAAAA:8 a=axDLF4JMAAAA:8
 a=_NUCNhTF33u9KWO8jzkA:9 a=QEXdDO2ut3YA:10 a=PAvEFfIi8YbDbmX8zHlT:22
Message-ID: <7e17bf66-e121-e853-43a4-6e05c19539fc@SystematicSw.ab.ca>
Date:   Thu, 24 Nov 2022 12:13:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Reply-To: linux-man@vger.kernel.org
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
Content-Language: en-CA
To:     linux-man@vger.kernel.org
From:   Brian Inglis <Brian.Inglis@SystematicSw.ab.ca>
Organization: Systematic Software
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfFuLW+NillFpm++3CV8EbFFbs09WaZEkySN8RJdHbr9EX5tgkOJD6Otav5B187eyKB54sbA7JZXc0/Vtkpgg/Fhp7h7ne60Jo0DDf421Xth1+uvMeem9
 TbzF5sYTd9lJ1C6oX7ZwPdyRu+/c9Z+pBfwCQMfytM/JCoMGpBFi+0Y62HyzylvBBS7AnAczbiFbNLTTb/N6ZSSiqu99wez4NIA=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-11-23 06:16, Alejandro Colomar wrote:
> On 11/23/22 13:52, Stefan Puiu wrote:
>> On Wed, Nov 23, 2022 at 1:39 AM Guillem Jover wrote:
>>> On Thu, 2022-11-10 at 12:36:47 +0100, Alejandro Colomar wrote:
>>>> On 11/10/22 01:13, Andrew Clayton wrote:
>>>>> While looking at which systems provide memmem(3) I have been able to
>>>>> discern the following:
>>>>>     musl libc since v0.9.7
>>>>>     bionic since Android 9
>>>>>     FreeBSD since 6.0
>>>>>     OpenBSD since 5.4
>>>>>     NetBSD
>>>>>     macOS
>>>>>     Illumos
>>>>> For macOS and Illumos I checked the memmem(3) man page on those systems.
>>>>> For the rest there are links below to on-line man pages or commit logs.
>>>>> +FreeBSD 6.0, OpenBSD 5.4, NetBSD, macOS & Illumos.
>>>> For the commit message, it's interesting to note macOS and Bionic, for
>>>> speleology purposes.  However, I'm opposed to adding them to the page itself
>>>> because of the following:
>>>> -  macOS is not free software.  I refuse to reference nonfree software on
>>>> this project.
>>> I understand where you are coming from,
> :-)
>>> and from a full system PoV,
>>> it's very true that macOS is non-free. But the lower layers of its
>>> stack are free software (at least according to the FSF and OSI), such
>>> as its kernel (Darwin), or its libc (where memmem() is implemented):
>>>    https://opensource.apple.com/source/Libc/Libc-1439.40.11/
>>> among others.
> Hmmm.  Fair enough.
>>> Similar with Solaris and Illumos (but with the CDDL, MIT, BSD), AFAIUI.
>>>> - Android is not a real Unix system, in that you can't even program in C in
>>>> there, unless you're Google or have hacked your system.  It's not friendly
>>>> to us programmers, so we don't need to be friendly to it. I don't want to
>>>> be cluttering the pages with information that is irrelevant to normal users.
>>> I'm assuming bionic is being used in some of the Android free
>>> alternatives too, but then I'm not sure how usable for programming those
>>> are either. And, well musl libc is not a real Unix system you can program
>>> against either. :)
> The difference is only that bionic is not in use in useful systems (AFAIK).  :)
> So we have to do some decision here (and also about newlib, as reported by Brian).
>>> In any case I also find it useful to have this kind of portability
>>> information when deciding what to use in code.
> And I must admit it's also useful to me (this all started because Andrew and I 
> had to use memmem(3) at a project where macOS compatibility is relevant --not 
> critical, but relevant--).
>>> But can understand the
>>> reluctance to include such references, at least if thought out as the
>>> entire system. Perhaps thinking about these merely at their kernel or
>>> libc level would make including information about some of them more
>>> palatable, given that standalone they are free software? So perhaps
>>> an option is to instead refer to their specific components, say
>>> "bionic libc X.Y", "Apple Libc M.N.O" or similar.
> Yep, that's more palatable :)
> I think I'd accept a patch stating Apple Libc version for memmem(3).
>> Not sure if it's the job of Linux man-pages to document when other
>> OSes started supporting certain APIs. That info has to be maintained,
>> updated etc. People can always read the man pages of other systems,
>> right? Maybe it's worth only pointing out when an interface is
>> Linux-only, or the Linux implementation diverges significantly.
> The good thing is that in most cases, it's either something in POSIX (for which 
> I gon't care at all if Apple Libc or another-weirdo-libc decide to not support 
> it), or it's a Linux-only function.
> So, there are few functions or syscalls that are generally available but are not 
> in POSIX, and it might be interesting to document that they're effectively as 
> portable as anything POSIX. Maybe even POSIX editors read this and decide to 
> add it.
> In those cases, we still need to decide what we care about or not.
> Musl libc is definitely a first-class citizen these days in Linux distributions. 
> I would start documenting them in the project at large if someone from musl 
> provides patches (I discussed this some time ago, but can't remember with who).
> Rich, if you would like to discuss about this, we can have some chat.
>> For musl and other libcs, I think the man pages already document some
>> instances where their behavior diverges from glibc.
> As said, for musl, I'd document them officially, if there's anyone interested 
> enough to send patches.
> For other libcs, we have to decide if they're important enough, and probably 
> decide on a case-by-case basis.
> Michael tried to have some decent coverage of non-GNU/Linux systems, both in the 
> man-pages and in his TLPI book. It's a useful thing. So much that sometimes 
> you don't even need to read other systems' pages at all to know how portable is 
> a GNU/Linux function.
> So, I'd like to get opinions on interest about documenting details about:
> - newlib (I never heard about it before; is it a widespread thing? do you think 
> it's useful?)
> - Apple Libc (I still don't like it, but I must admit that it's relevant, and 
> being open source, it's more palatable)
> - bionic (does anyone know if that's useful at all for anyone at all?)

Newlib is a Sourceware supported project originally by Cygnus then RedHat;
- now licensed under BSD, based partially on some BSD sources;
- used mainly for embedded systems and OSes, including those supported by 
processor, system, and GCC tool chain vendors, and by manufacturers in their 
products, some of whom contribute back to the project;
- significant libre OS RTEMS, which itself supports many embedded targets, is 
used with space qualified hardware on ESA and NASA Mars orbiter projects, and 
replaced glibc in NaCl a decade ago;
- info and man pages are generated from function source embedded comments using 
makedoc/DocBook.

See below and the relevant .org sites:
	https://en.wikipedia.org/wiki/Newlib
- that page also provide links to summary info on other libc implementations;
	https://en.wikipedia.org/wiki/RTEMS

Newlib is included in Phil Zimmerman's regular comparison of all major C math 
library implementations single thru quad precision functions:
	https://members.loria.fr/PZimmermann/papers/accuracy.pdf
which compares GNU MPFR (to which PZ contributes) results to those from GNU 
libc, Intel, AMD LibM, Newlib, OpenLibm, Musl, Darwin, LLVM libc, CUDA, and ROCm 
math libraries.

Newlib is also used by Sourceware supported libre kernel emulator project Cygwin 
originally by Cygnus then RedHat;
- works like a Unix distro hosted on and fully interoperable (unlike WSL so far) 
with Windows;
- originally aiming for POSIX and feasible Solaris, now Linux, compatibility;
- supports over 12k BSD, GNU, and other libre libraries and packages;
- on both 64 and, until recently, 32 bit systems;
- appears to be used by manufacturers and vendors to provide embedded 
development on Windows;
- support native Windows cross-compiler, binutils platform, and code base for 
parts of the Mingw/32/64, Msys/2, and Wine projects, and others like Git for 
Windows.

Cygwin provides its own utility, emulation library, newlib libc plus all 
packages' GNU info and man pages, man-pages-posix, and also man-pages(-linux) 
packages under man-db.
Compatibility with everything above kernel syscalls and data structures for 
porting packages is the project goal, so process fork/exec, multithreading, and 
multiprocessor scheduling are all supported using standard interfaces.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
