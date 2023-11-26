Return-Path: <linux-man+bounces-165-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFA37F9360
	for <lists+linux-man@lfdr.de>; Sun, 26 Nov 2023 16:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 981F928102A
	for <lists+linux-man@lfdr.de>; Sun, 26 Nov 2023 15:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668AAD26A;
	Sun, 26 Nov 2023 15:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 1852 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 26 Nov 2023 07:28:40 PST
Received: from violeteyes.cs.princeton.edu (violeteyes.cs.princeton.edu [128.112.136.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80ED8E1
	for <linux-man@vger.kernel.org>; Sun, 26 Nov 2023 07:28:40 -0800 (PST)
Received: from spin.cs.princeton.edu (spin.cs.princeton.edu [128.112.155.173])
	(authenticated bits=0)
	by violeteyes.cs.princeton.edu (8.14.7/8.14.7) with ESMTP id 3AQEvWj5012964
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 26 Nov 2023 09:57:34 -0500
Date: Sun, 26 Nov 2023 09:57:32 -0500 (EST)
From: Brian Kernighan <bwk@cs.princeton.edu>
To: Alejandro Colomar <alx@kernel.org>
cc: "Brian W. Kernighan" <bwk@princeton.edu>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Matthew House <mattlloydhouse@gmail.com>
Subject: Re: Errata in K&R C v2, page 97 (was: [PATCH v2] CONTRIBUTING: Please
 sign your emails with PGP)
In-Reply-To: <41b65637907f43ecafadd58565a7b483@DM6PR04MB4443.namprd04.prod.outlook.com>
Message-ID: <0596dd5a-3efd-7d89-6280-f6e032941c58@cs.princeton.edu>
References: <20231122134716.73658-2-alx@kernel.org> <20231122162557.mdd3z6hmt3pz43bo@illithid> <ZV4506eXcQhZj91V@debian> <41b65637907f43ecafadd58565a7b483@DM6PR04MB4443.namprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1887481243-1949758024-1701010654=:2580933"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1887481243-1949758024-1701010654=:2580933
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

In the printed version of the C book, section 5.5 begins on page 104.
pmessage is indeed the one with two boxes and an arrow.

Are you looking at the real book or some mutated copy from the web?
I have had error reports in the past on imperfectly pirated copies.

On Wed, 22 Nov 2023, Alejandro Colomar wrote:

> Hello Brian,
>
>> On Wed, Nov 22, 2023 at 10:25:57AM -0600, G. Branden Robinson wrote:
>>> [1] I encourage anyone with either a reverential or heretical turn of
>>>     mind to review §5.5 of the 2nd edition of _The C Programming
>>>     Language_ and consider it light of our string_copying(7)
>>>     discussions.  I would attend particularly to what is implied by the
>>>     recommendation of Exercise 5-5 to implement strncat(3), strncmp(3),
>>>     and strncpy(3) from scratch.
>
> I just found an erratum in K&R C v2 §5.5:  In page 97, in the picture,
> 'amessage' and 'pmessage' are switched (IMO); pmessage should be the one
> with the two boxes and an arrow, since it's the pointer one.  We didn't
> find it in the existing list of errata[1], which Branden pointed to me.
>
> [1]:  <https://www.cs.princeton.edu/~bwk/cbook.html>
>
> Cheers,
> Alex
>
> -- 
> <https://www.alejandro-colomar.es/>
>
--1887481243-1949758024-1701010654=:2580933--

