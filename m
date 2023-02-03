Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C25C6899B3
	for <lists+linux-man@lfdr.de>; Fri,  3 Feb 2023 14:29:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231205AbjBCN3Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Feb 2023 08:29:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbjBCN3X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Feb 2023 08:29:23 -0500
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FDAB56ED8
        for <linux-man@vger.kernel.org>; Fri,  3 Feb 2023 05:28:53 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id CFCAD2402A6
        for <linux-man@vger.kernel.org>; Fri,  3 Feb 2023 14:28:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1675430931; bh=b6S1oYpNlYnU3oBKrFh4n9jIZXzkRtRuQKC7kQ45YpU=;
        h=Date:Subject:From:To:From;
        b=KuGjVv6OUnLO5A9l6gMZtaj+B0M8ScLuQLxVGKzaw1S0nkIzWK9ahSHCo8aNNfnHt
         VOwlUoc+BVQ5GJwBD8dUAdSQfsg49eyWAOzcrBt0SP+w3sGc1N/etnR7MIq4+A7onJ
         zZARo/ehcVV5dxm59MWJJmZAf7YbHd2X+fZwMw9h/9vVHDZYrEGtMRkeHhsStsBApX
         uegD1zNehWBy18PDARfZn4Sr11fyUF03gjcj4LlCEzfEMTLGrOQUkhLXyY7BHwFLXW
         XwD8VSkDTLSz6YCVFtKQ2NtYA2FaO/w4LbU1XCRmAZr3eDEWWMcJ9pdRJquyllNoCt
         Z7/kOjf2e9Zog==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4P7c1Z5XNsz9rxK;
        Fri,  3 Feb 2023 14:28:50 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Fri, 03 Feb 2023 13:27:50 +0000
Message-Id: <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
Subject: Re: Using C23 digit separators not locale digit grouping characters
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "Alejandro Colomar" <alx.manpages@gmail.com>,
        <Brian.Inglis@Shaw.ca>,
        "Linux Man-Pages" <linux-man@vger.kernel.org>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
In-Reply-To: <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri Feb 3, 2023 at 12:59 AM CET, Alejandro Colomar wrote:
> On 2/2/23 23:29, Brian Inglis wrote:> Hi Alex,
>
> Hi Brian,
>
> >=20
> > Took your views on board and changed man2 pages.
> > Attached summary only has file names and changed lines.
>
> I prefer inline in the email :)
>
> > Would like feedback on what to continue doing and what to forget doing =
before=20
> > starting man3?
>
> See below.
>
> > Of note for review are open.2 octal perms,
>
> The octals read a bit weirder than the others.  Please keep them in a sep=
arate=20
> patch, so we can decide on it later.  But I wouldn't discard it for now.
>

I wonder if I'm the only one who thinks that the digit separators look
irritating for both, hex and octal. The reason for using them in the first =
place
is to make numbers more readable and thus get them "out of the way".
As of my experience, it's not common to use separators for neither hex or o=
ctal.
I think we're going against what people are used to and more importantly, w=
hat
is generally found in code and documentation. We might archive the opposite=
 of
what we try to do.

Just my 2 cents.

--
Best Regards,
Tom Schwindl
