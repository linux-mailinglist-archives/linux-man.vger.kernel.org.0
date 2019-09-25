Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E9BCBE905
	for <lists+linux-man@lfdr.de>; Thu, 26 Sep 2019 01:40:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731995AbfIYXkm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 19:40:42 -0400
Received: from gateway36.websitewelcome.com ([192.185.179.26]:31688 "EHLO
        gateway36.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1731772AbfIYXkm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 19:40:42 -0400
X-Greylist: delayed 1500 seconds by postgrey-1.27 at vger.kernel.org; Wed, 25 Sep 2019 19:40:41 EDT
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
        by gateway36.websitewelcome.com (Postfix) with ESMTP id 81CCC400FC98E
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 17:21:07 -0500 (CDT)
Received: from gator3203.hostgator.com ([198.57.247.167])
        by cmsmtp with SMTP
        id DGA9i6RriBnGaDGAAiI8xl; Wed, 25 Sep 2019 17:53:34 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=rsiny.com;
         s=default; h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
        In-Reply-To:Date:Cc:To:Reply-To:From:Subject:Message-ID:Sender:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=g/uQ5NJEuenyEDiwMXwZxsFmqtsLRLQ0cs4ahThZ5sQ=; b=bGQl4Igaa38k6z282IvhuCIDRk
        yoyNdMi3hueyvnCwqhhtRJs4n1fk8UdVYictqNaaROFZh4E8YnX7vDu8ExiOOv9dEKS0m64hSV1x8
        t7pe6g73GsO5lod1WHj8qPCxE0BwsF7lOwHQBCOUtUBId49vdqy4+qP2lMbD4JcBmcD2DyJGFFawl
        O91ZI8gk10DZJV3KoXCaizsJXx1yuiHGE58VxyuVi/9UFp4vxNj9oMG7F8CeZ1dnxVQoKfLNaLvgQ
        81Jaf5gJnAfAyppem5FX6aWt3fTNgqh2RQSWiOx5TH93T/AqNIMlbci1xnkV5e+dR5Oo6eS86h1cX
        qxpJLhDQ==;
Received: from pool-100-37-189-229.nycmny.fios.verizon.net ([100.37.189.229]:51226 helo=[192.168.1.4])
        by gator3203.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.92)
        (envelope-from <rstanley@rsiny.com>)
        id 1iDGA9-002uxG-Dt; Wed, 25 Sep 2019 17:53:33 -0500
Message-ID: <c9d561ab9053da5e1e3a1d095001b39e2da88258.camel@rsiny.com>
Subject: Re: Man page pre & post operators error
From:   Rick Stanley <rstanley@rsiny.com>
Reply-To: rstanley@rsiny.com
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Date:   Wed, 25 Sep 2019 18:53:32 -0400
In-Reply-To: <b26c24c2-63ae-bb99-4df9-653f9d33f20d@gmail.com>
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
         <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
         <a872f7e970a7d2048243f21b9fb40ad5fa929ffe.camel@rsiny.com>
         <65c8c525eb718aa77816f3fe0b47e33d3504e623.camel@rsiny.com>
         <3cdbcb38-734a-2b1e-ba12-f5e85a89b805@gmail.com>
         <b26c24c2-63ae-bb99-4df9-653f9d33f20d@gmail.com>
Organization: RSI
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3203.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - rsiny.com
X-BWhitelist: no
X-Source-IP: 100.37.189.229
X-Source-L: No
X-Exim-ID: 1iDGA9-002uxG-Dt
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: pool-100-37-189-229.nycmny.fios.verizon.net ([192.168.1.4]) [100.37.189.229]:51226
X-Source-Auth: rstanley@rsiny.com
X-Email-Count: 1
X-Source-Cap: cnN0YW5sZXk7cnN0YW5sZXk7Z2F0b3IzMjAzLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael:

I have made the assumption that the current manpage operator table was
based on the C89/90 C Standard. This was a bad assumption!

Please throw out what I have sent and I will create a new more detailed
interpretation of the Draft Standards, with more detailed explanation.
I do not work with anything but the Draft Standards documents.  (With
one possible additional source. Will explain later)

Thanks!

Rick 

--
RSI (Rick Stanley, Inc.)
(917) 822-7771
www.rsiny.com
Computer  Consulting
Linux & Open Source Specialist
On Sep 25, 2019, at 4:08 PM, "Michael Kerrisk (man-pages)" <
mtk.manpages@gmail.com> wrote:
> Hello Rick,
> 
> (Im reflecting more.)
> 
> On 9/25/19 9:42 PM, Michael Kerrisk (man-pages) wrote:
> >  Hello Rick,
> >  
> >  On 9/25/19 5:23 PM, Rick Stanley wrote:
> > >  Hello again!
> > > 
> > >  In an effort to bring the current manpage for the C operator
> > > table up
> > >  to the current official Standard, I went back and compared the
> > > current
> > >  manpage operator table against the C99, C11, and C17(18) Draft
> > >  Standards documents.  I do not have access to the Official ISO C
> > >  Standards documents.
> > > 
> > >  I have attached a PDF to document my interpretation of the
> > > Standards
> > >  against the current `man operator` manpage
> > > 
> > >  In addition to the pre & postfix ++ & -- operators, I have found
> > > one
> > >  additional change & three additions to the table.  Because of
> > > these
> > >  appearing in 6.5.x, and A.2.1, I assume they should be included
> > > in the
> > >  operator table.
> > > 
> > >  The current table consists of 15 levels of precedence, C99 adds
> > > one new
> > >  level and C11 adds one more.
> > > 
> > >  (type) cast operator change
> > > 
> > >  In the current table, the cast operator is listed on level 2 of
> > > 15
> > >  levels, along with other operators.  In C99 this operator has
> > > been
> > >  demoted to a new level inserted between level 2 & 3 of the
> > > current
> > >  level, expanding the table to 16 levels of precedence.  I assume
> > > the
> > >  associativity is also "right to left", as is level 2.
> 
> How do you deduce that this changed between C89/90 and c99?
> I'm not so convinced now that '(type) cast' changed in precedence.
> 
> > >  _Generic operator/keyword addition
> > > 
> > >  This new operator/keyword was added in C11.  A new top level was
> > >  created and the remainder of the table has been demoted by one
> > > level.
> 
> But, is it really an operator? How do you deduce that?
> 
> > >  default operator/keyword addition
> > > 
> > >  This too has been added to the new top level in C11
> >  
> >  But, 'default' is not an operator as far as I can tell?
> >  (It is part of the '_Generic' construct, not an operator
> >  in its own right.)
> >  
> > >  _Alignof operator/keyword addition
> 
> This seems clearly correct to me, and I find other sources
> that agree on this.
> 
> My general problem is that I find no other sources
> that confirm your interpretation of the standard that _Generic
> is a new operator at a new level and that '(type) cast' has
> changed in precedence.
> 
> Thanks,
> 
> Michael
> 
-- 
RSI (Rick Stanley, Inc.)
(917) 822-7771
www.rsiny.com
Computer Systems Consulting
Linux & Open Source Specialists

