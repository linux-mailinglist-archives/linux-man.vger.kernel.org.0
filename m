Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 258EB659C8B
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 22:50:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235403AbiL3VuZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 16:50:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiL3VuX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 16:50:23 -0500
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92AF8113
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 13:50:22 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,288,1665475200"; 
   d="scan'208";a="92127986"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa2.mentor.iphmx.com with ESMTP; 30 Dec 2022 13:50:21 -0800
IronPort-SDR: DnrzW5L2tpAz0x0xW05+AghfXKPnpTBqdXODd97FSoisjvjBrJIBJkQ3olj3HrIKN2c50FJRLV
 ns51DA6EPk+R0eU5iKdneVXv25Y4SiHi9vomgfDMksNn8dpfR2zVRQ9A26xET6w38Y9MF+2ZFK
 iSSNvoBh8ULMXMlNmRN8JLhhpmTQzjZP5tZoiSmi2xv+QlF/i5guTPt7k6H4euz1kurK+yTtSW
 +vLrpQ9JAtK6gFWZGPd7OJZVQ/Zi8xIWiPw1OW1RftS9wNvcEUWzKJTvKUjqf5j8cxqIit4806
 j1s=
Date:   Fri, 30 Dec 2022 21:50:16 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     =?ISO-8859-15?Q?Cristian_Rodr=EDguez?= <crrodriguez@opensuse.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: Internal organization of "the implementation" (was: [PATCH] Add
 example to rand.3)
In-Reply-To: <49e90587-8f1a-111e-8937-40afbbf55106@gmail.com>
Message-ID: <b754dc-d68c-6a66-50a7-4153ca6537f1@codesourcery.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org> <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com> <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com> <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com> <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com> <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com> <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com> <CAPBLoAcGH1jdcLj8piriw9d5WCiknHAf=6gBFQjJs71cYZtLxA@mail.gmail.com>
 <db22324-e427-d9bb-f6ee-ec155c3ff33c@codesourcery.com> <49e90587-8f1a-111e-8937-40afbbf55106@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 30 Dec 2022, Alejandro Colomar via Libc-alpha wrote:

> Why is this duplication of responsibility for libc functions?  Why isn't there

There isn't duplication.  Each function is the responsibility of exactly 
one of the compiler and the libc; GCC's documentation, once updated for 
C2x, will reflect which parts it expects to provide and which it expects a 
corresponding libc to provide.

> a smaller say libmem that provides a unique implementation for these memcpy(),
> memmove(), memset() functions, and both gcc and glibc (and even the kernel
> could, with static linking) depend on it?

The design follows from the traditional structure of libc on Unix systems 
(containing both functions closely related to the OS and functions that 
only depend on the CPU architecture and not the OS) and GCC's early role 
as an alternative to the system compiler there.  It's possible to 
structure libraries in lots of different ways (I don't know if BSD systems 
actually share parts of libc with the kernel, but they certainly tend to 
have closer integration of code across the whole system, for example).  
Non-C-family languages are probably a better place for exploring the 
design space of different divisions among compilers and libraries, than C 
libraries that are expected to fit with existing tooling, build systems 
and operating systems (and certainly the extreme case of a very large 
number of separately maintained tiny libraries in some such language 
environments shows up its own problems with dependency management).

In practice, while there's sometimes sharing at the level of a third-party 
source code repository providing code that can be used in multiple places 
(see Arm's optimized routines, for example), including code in shared 
libraries and using features such as IFUNC, along with e.g. some objects 
having multiple entry points and other libc-internal symbol handling 
requiring close coordination among the build of all linked objects, makes 
it hard to share at the object code level.  And we've tended lately to 
move *away* from separate small shared libraries - rather, integrating 
formerly separate libraries such as libpthread into the single shared 
libc.

-- 
Joseph S. Myers
joseph@codesourcery.com
