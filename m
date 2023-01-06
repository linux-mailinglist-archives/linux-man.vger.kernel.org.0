Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A9EB660537
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 18:01:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231527AbjAFRBY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 12:01:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234754AbjAFRBV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 12:01:21 -0500
Received: from esa4.mentor.iphmx.com (esa4.mentor.iphmx.com [68.232.137.252])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB1F41648
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 09:01:19 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,305,1665475200"; 
   d="scan'208";a="92441078"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa4.mentor.iphmx.com with ESMTP; 06 Jan 2023 09:01:20 -0800
IronPort-SDR: PJSqeV1vJjFPty4ec+NaDiEnSBoLIfCehZ6oImfBFhJfT2R896sC8N2s9uKuaY6zElAHin7GLr
 VxHJmQfdEeo7JH671xF+f2wurdL92kkvYSUCxSuEsuSsvzOQEMQ3EugqOtJMRXyng2dDRsajGm
 mMnij93QQud1jk3T7NbpGRZkY5ANiz88dYJckzEay1LMUWJlzKTVjsJuH/s8bizrk6dJNf+PtY
 7FcUUDQKi10hSMNG3f1yW7vmv75A+wkTq92ba+VYchP1SXw7+HbXAYcDUp08WCuw+U5UxY6mhT
 4HE=
Date:   Fri, 6 Jan 2023 17:01:13 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx@kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
  set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rti...
In-Reply-To: <91de4293-9237-68d5-7743-9519f4259ecb@gmail.com>
Message-ID: <b6f134c0-1e3a-4685-3669-b4093f3aa6@codesourcery.com>
References: <PAWPR08MB89821938473B0BCE72D99B9083FB9@PAWPR08MB8982.eurprd08.prod.outlook.com> <91de4293-9237-68d5-7743-9519f4259ecb@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-14.mgc.mentorg.com (139.181.222.14) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 6 Jan 2023, Alejandro Colomar via Libc-alpha wrote:

> P.S.:  To compensate for the time I'm taking from you, I'm preparing a patch
> to remove rawmemchr(3) from glibc.  I'll send it when it's "ready".  Although

Don't waste your time.  The criterion for removing a function is something 
close to "never did anything meaningful or useful; no binary could ever 
have successfully used the function with the ABI with which it was 
defined"; otherwise we'd need a compelling case for how removing the 
function can't break any existing binaries or sources we'd care about.  
Even turning a function into a compat symbol, so making it unavailable to 
new programs (while keeping it for existing binaries and keeping glibc 
tests of that compat symbol), requires a much stronger deprecation basis 
than "there are standard functions that are just as good".  And marking 
functions as deprecated with an attribute in headers - normally desirable 
several releases before making a function into a compat symbol, at least - 
also needs such a stronger deprecation basis; nothing in this thread 
suggests any basis for marking *any* string functions as deprecated to me.

-- 
Joseph S. Myers
joseph@codesourcery.com
