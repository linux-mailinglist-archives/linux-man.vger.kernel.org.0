Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E94FC2FE65C
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 10:30:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728546AbhAUJ3p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 04:29:45 -0500
Received: from mx01-muc.bfs.de ([193.174.230.67]:24104 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728373AbhAUJCE (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 21 Jan 2021 04:02:04 -0500
X-Greylist: delayed 589 seconds by postgrey-1.27 at vger.kernel.org; Thu, 21 Jan 2021 04:02:02 EST
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id 0F73E2011B;
        Thu, 21 Jan 2021 09:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1611219069;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=9eLfOlSEhVzFBwSvxZGtJWfTLkgqmOUtBXBivDdTnYY=;
        b=frgCcm9ebnpKiYiiSGmz2p6CaxHd4Y0IbefcWX3VO9UT59dqfUc9JMnPF7XAkP4D3E10hE
        0AVhPUzvA2J+94niPfqlJGHdVeSGkriUJ0ntB7f9EArPsBf5fgGMwIDL7R9r+JQa11KC4s
        Zxi7WtBwNAZWmYeAFb630MRKMFcoJbHT7t+obFjtr1U38KiAW4ZxU7ypeaHBrqOMLpddul
        bW0WyIa/o8FcDDoBm2kSDPDya8dRqEW9sz91jq7Xh+mnUjG0c1q4rP/VB2qoFAatPs7HtD
        0m4mrsejregSL7I4wBj/wEZTXgXoS/6DVQAj19MwoVaR1ABMtqNgifV9kG9y8w==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Thu, 21 Jan
 2021 09:51:08 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2106.002; Thu, 21 Jan 2021 09:51:08 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: sendfile() more detailed information ? anyone ?
Thread-Topic: sendfile() more detailed information ? anyone ?
Thread-Index: AQHW79KPLJAPPT0kuUqoUpSR3oNw9Q==
Date:   Thu, 21 Jan 2021 08:51:07 +0000
Message-ID: <f1652c86c31a42378d2ca5e07a76d2f2@bfs.de>
References: <6e9e410d0e874053bed915ba2c31a74b@bfs.de>,<1c979dfb-5d9b-27e6-39a3-8947bc8cee74@gmail.com>
In-Reply-To: <1c979dfb-5d9b-27e6-39a3-8947bc8cee74@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-as-result: No-10--9.817200-5.000000
x-tmase-matchedrid: Oytm+FhQMpgI9V8p1Mx66RJmPIoQFzZ7PknazlXMVpV+SLLtNOiBhrLs
        vs6J0rHdyvI1kLGX9/XzawkyhrmmWt2zNEXBxNvnYXOD42j+641kAa0IkTbdiMuSXx71bvSLCh5
        FGEJlYgFzPnXHWXaxakuWaR/IDHb3HForOVdsRaWwWQIt565829MB70WyBtjHilzcm2p6JE8iCA
        r7RhVKiburtyRlEBhl3mDoV3kJ4VHt+DjkxhBU4olSWYvdSPSYsU9NvlUVKalnq+k+Y5DhgAkUu
        GQcRyZK/ye/3Hc9K1rLyIiXZ5wUyrUs2w7JYozUqjZ865FPtppNeEQeLECUucnJhTYnTng9D3bL
        dMpm5wQnmfZ4t+ZoOlfZw/DksYB9jxXQnG46XeIoPrDxs+3NLCLLJGCSgZKkvStYzicikmsPuuo
        XsBsBbWALqiD6re6ytRz2rAq7NwRu7HZIu9RMkPVY7U3NX8JgwmO59eiHRKMR34ro7k23neJPuT
        2D4EJW1TDgWiROi08KuVMJ0kzrkWgvQFu5lZd6Lyz9QvAyHjqhKzbbSmEIF+NbYpfw+RfhmMuC9
        SVxFE1dFS4h0Pboqgd2m1cUUwTvyv0cOf3xvpKXZ9FWlXKjpH0tCKdnhB581B0Hk1Q1KyJXaDn6
        DhA2Ao2j49Ftap9EOwBXM346/+yzcxqhjkksK1sqHP/e2ZK+/LzspYrpfm51gY2dRYAlJNlItgP
        dW8JF
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--9.817200-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-snts-smtp: 5BDACECFA25F1BF604185292D1CC28023E35195C155F8228864C17C92720D9E22000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spamd-Result: default: False [0.97 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         RCPT_COUNT_TWO(0.00)[2];
         FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         SUBJECT_ENDS_QUESTION(1.00)[];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.03)[57.07%]
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spam-Status: No, score=0.97
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I would suggest to search the busybox ml for the thread:
 Why doesn't "cat a b > foo" work?

I did some search on the net for sendmail() and found that
several project had problems with various implementations
of sendfile() and offered a switch to disable its use.
(I added the apache doc for more details but other project
 have the same). Nothing is mentioned in man page but to be fair
several problems have been fixed.

re,
 wh

________________________________________
Von: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
Gesendet: Mittwoch, 20. Januar 2021 21:18
An: Walter Harms; linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Betreff: Re: sendfile() more detailed information ? anyone ?

Hello Walter,

On 1/20/21 6:40 PM, Walter Harms wrote:
> Hi List,
> there was a discussion on the busybox-ml about a kernel-bug in sendfile()=
.
> <cite>
> In 2.6.33.7, when used with a normal file as the output, it always
> writes the data to offset 0 in the file.
>
> That's fine if you only call it once and then close the output
> fd. However, if you call it multiple times (as busybox 'cat' does when
> copying multiple files), then you don't get the expected result. The
> contents of the input files are not concatenated. Instead the contents
> of each input file overwites the existing contents of the output file
> starting at offset 0.
> </cite>

At a very quick test, I could not reproduce this. Do you have a URL
for the mail discussion?

Thanks,

Michael

> these apache doc mentions more problems
> https://httpd.apache.org/docs/2.4/mod/core.html#enablesendfile
>
> It seems that the bug mentioned above is fixed but nobody seems to
> know when this was done.
>> IMHO this should be mentioned in the man page, but i lack detailed
> information and time to research them. I would like to encourage
> anyone who has information to  come forward so it can be added to man
> page.>
> re,
>  wh
>


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
