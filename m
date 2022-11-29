Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C409F63C3FD
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 16:44:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232159AbiK2PoG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 10:44:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231599AbiK2PoF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 10:44:05 -0500
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 466CE2ED66
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 07:44:04 -0800 (PST)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out1.suse.de (Postfix) with ESMTP id E906521AB0;
        Tue, 29 Nov 2022 15:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1669736642; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=1dpLe3l6q28ZdHJTn0N3XxXZRnyoO/cfX9dnRjUoirs=;
        b=dsxnQFKH/Mgafyygy8SWjitys6bNnTQqwIqTaETLlYn1zF5IeuX08JQILLK/S3CTcWEikY
        L4Ni5CageiVn7NJlpS/8tloXU2UuQg/h4SbxXozjNzPP5TBciub81ykZ/nkn2zlpkBk3H+
        UQ4orO3AGjno608JLoxSWdKZFDSxMtM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1669736642;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=1dpLe3l6q28ZdHJTn0N3XxXZRnyoO/cfX9dnRjUoirs=;
        b=0xqnxnRPlvfI1DH+j3yzhpXHzH2n3jPpsens6FFkSLXr4Lv6hZ3nw5fx5hIFhM0NZ/yfJb
        sdkObjmcCEhmzaBg==
Received: from wotan.suse.de (wotan.suse.de [10.160.0.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id C8FE02C142;
        Tue, 29 Nov 2022 15:44:02 +0000 (UTC)
Received: by wotan.suse.de (Postfix, from userid 10510)
        id B7A1C65E6; Tue, 29 Nov 2022 15:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
        by wotan.suse.de (Postfix) with ESMTP id B4A1065E2;
        Tue, 29 Nov 2022 15:44:02 +0000 (UTC)
Date:   Tue, 29 Nov 2022 15:44:02 +0000 (UTC)
From:   Michael Matz <matz@suse.de>
To:     "Uecker, Martin" <Martin.Uecker@med.uni-goettingen.de>
cc:     "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "joseph@codesourcery.com" <joseph@codesourcery.com>,
        "schwarze@usta.de" <schwarze@usta.de>,
        "wg14@soasis.org" <wg14@soasis.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <5ccbf8ed11bd542477980f58aa277bf4335f1281.camel@med.uni-goettingen.de>
Message-ID: <alpine.LSU.2.20.2211291519160.24878@wotan.suse.de>
References: <20220826210710.35237-1-alx.manpages@gmail.com>  <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>  <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>  <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>  <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
  <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>  <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>  <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>  <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>  <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
  <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>  <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>  <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>  <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>  <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
  <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>  <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>  <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>  <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <5ccbf8ed11bd542477980f58aa277bf4335f1281.camel@med.uni-goettingen.de>
User-Agent: Alpine 2.20 (LSU 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-1609957120-1909256762-1669736642=:24878"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1609957120-1909256762-1669736642=:24878
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

Hey,

On Tue, 29 Nov 2022, Uecker, Martin wrote:

> It does not require any changes on how arrays are represented.
> 
> As part of VM-types the size becomes part of the type and this
> can be used for static or dynamic analysis, e.g. you can 
> - today - get a run-time bounds violation with the sanitizer:
> 
> void foo(int n, char (*buf)[n])
> {
>   (*buf)[n] = 1;
> }

This can already statically analyzed as being wrong, no need for dynamic 
checking.  What I mean is the checking of the claimed contract.  Above you 
assure for the function body that buf has n elements.  This is also a 
pre-condition for calling this function and _that_ can't be checked in all 
cases because:

  void foo (int n, char (*buf)[n]) { (*buf)[n-1] = 1; }
  void callfoo(char * buf) { foo(10, buf); }

buf doesn't have a known size.  And a pre-condition that can't be checked 
is no pre-condition at all, as only then it can become a guarantee for the 
body.

The compiler has no choice than to trust the user that the pre-condition 
for calling foo is fulfilled.  I can see how being able to just check half 
of the contract might be useful, but if it doesn't give full checking then 
any proposal for syntax should be even more obviously orthogonal than the 
current one.

> For
> 
> void foo(int n, char buf[n]);
> 
> it semantically has no meaning according to the C standard,
> but a compiler could still warn. 

Hmm?  Warn about what in this decl?

> It could also warn for
> 
> void foo(int n, char buf[n]);
> 
> int main()
> {
>     char buf[9];
>     foo(buf);
> }

You mean if you write 'foo(10,buf)' (the above, as is, is simply a syntax 
error for non-matching number of args).  Or was it a mispaste and you mean 
the one from the godbolt link, i.e.:

void foo(char buf[10]){ buf[9] = 1; }
int main()
{
    char buf[9];
    foo(buf);
}

?  If so, yeah, we warn already.  I don't think this is an argument for 
(or against) introducing new syntax.

...

> But in general: This feature is useful not only for documentation
> but also for analysis.

Which feature we're talking about now?  The ones you used all work today, 
as you demonstrated.  I thought we would be talking about that ".whatever" 
syntax to refer to arbitrary parameters, even following ones?  I think a 
disrupting syntax change like that should have a higher bar than "in some 
cases, depending on circumstance, we might even be able to warn".


Ciao,
Michael.
---1609957120-1909256762-1669736642=:24878--
