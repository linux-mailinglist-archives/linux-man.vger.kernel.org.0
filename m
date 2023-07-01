Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4438B74496D
	for <lists+linux-man@lfdr.de>; Sat,  1 Jul 2023 15:42:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230282AbjGANmm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jul 2023 09:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231214AbjGANml (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jul 2023 09:42:41 -0400
X-Greylist: delayed 338 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 01 Jul 2023 06:42:32 PDT
Received: from port70.net (port70.net [81.7.13.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 40FDD3C11
        for <linux-man@vger.kernel.org>; Sat,  1 Jul 2023 06:42:32 -0700 (PDT)
Received: by port70.net (Postfix, from userid 1002)
        id EDEA8ABEC0C7; Sat,  1 Jul 2023 15:36:52 +0200 (CEST)
Date:   Sat, 1 Jul 2023 15:36:52 +0200
From:   Szabolcs Nagy <nsz@port70.net>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     libc-coord@lists.openwall.com, Rich Felker <dalias@libc.org>,
        linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org
Subject: Re: [libc-coord] Re: [musl] Re: regression in man pages for
 interfaces using loff_t
Message-ID: <20230701133652.GF3630668@port70.net>
Mail-Followup-To: Paul Eggert <eggert@cs.ucla.edu>,
        libc-coord@lists.openwall.com, Rich Felker <dalias@libc.org>,
        linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <20230630233705.GW4163@brightrain.aerifal.cx>
 <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Paul Eggert <eggert@cs.ucla.edu> [2023-07-01 00:24:27 -0700]:
> On 2023-06-30 16:37, Rich Felker wrote:
> > This is still changing the documentated signature, which isn't really
> > nice, and would not be compatible with glibc unless glibc went out of
> > its way to hide those functions when _FILE_OFFSET_BITS is 32.
> 
> I don't see any incompatibility with glibc and the changes I proposed. The
> changes merely weaken the spec in the man pages in an area where the spec
> should be weakened. glibc is compatible with the spec before it was changed
> to use off64_t, it's compatible with the spec now that it uses off64_t, and
> it would continue to be compatible with the spec if the proposed changes are
> adopted.

loff_t * can be incompatible with off64_t * as well as off_t *.

the documentation change can break the api of an implementation,
it is not weakening the spec.

(it can also break abi if loff_t has different abi than off64_t. two
integer types can have same range, representation and syscall argument
passing abi, but different libc abi and different c++ abi)

i don't think you can claim that glibc is compatible either way, as
a future target port can define loff_t differently than off64_t.
