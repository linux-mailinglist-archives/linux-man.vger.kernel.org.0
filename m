Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8EB727F033
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 19:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731414AbgI3RXd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 13:23:33 -0400
Received: from esa3.mentor.iphmx.com ([68.232.137.180]:48755 "EHLO
        esa3.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731385AbgI3RXc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 13:23:32 -0400
X-Greylist: delayed 426 seconds by postgrey-1.27 at vger.kernel.org; Wed, 30 Sep 2020 13:23:31 EDT
IronPort-SDR: Cx4UW2elN3+C48T7rxSt2p3bA/LFXLDcB7aWT6KBTlEMoWKRdUXKbfyGAX6CNajkVM5+xxrYXK
 rFmAiPkFLrwl5zpW3BAWR093B4wV2fQ4FNFq86vVqeKpABytjC1AsRJt4zbm7sPQbEAx+7G7rB
 aQZK/v1LTOglfsXnRLdd7CUrGyDB00j51xygPLkWTyCKTs8PGK85bIPqoq3D28DlthLaILfo0X
 xwtus8zjf6IGgfPz+VMSapoJeSBrLe5549jqBhgpeo6P09UtKqVQjQVpzZMrX1eOSHLukZh6ir
 9Rs=
X-IronPort-AV: E=Sophos;i="5.77,322,1596528000"; 
   d="scan'208";a="53426217"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa3.mentor.iphmx.com with ESMTP; 30 Sep 2020 09:16:25 -0800
IronPort-SDR: bjA6jjRy40MedrpsUuyiNbDgQCVq4j4EiKg0LiN8Rpb8WGFeKMcz40KD8fYRRYhjffazUEuqT6
 3osl3hDFV+ceNE11D+n3OAG3A/13Cd8dsYBbuT/PvhTnj5aRLLuMq+PgPlx0mQE0YWBOmrq5uy
 IcLBTsq7YHH/5F4GDCcEFsSFaQFLeYe+b58xo9yxU37gE13duBSsqsDS5q6GF4FLWMkh+gwI3o
 oPPLREIonDrosPMOYLQyNO2/rpuQbIya+eNqzsGVgs5lbhBh+EPPpdw9g4LIfYe+tggDlFyrQH
 vl8=
Date:   Wed, 30 Sep 2020 17:16:16 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Dave Martin <Dave.Martin@arm.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        <linux-man@vger.kernel.org>, <libc-alpha@sourceware.org>,
        <mtk.manpages@gmail.com>
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
In-Reply-To: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
Message-ID: <alpine.DEB.2.21.2009301710510.5720@digraph.polyomino.org.uk>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com> <20200918112755.21428-2-colomar.6.4.3@gmail.com> <20200928134122.GG6642@arm.com> <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com> <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
 <20200928141524.GH6642@arm.com> <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 28 Sep 2020, Alejandro Colomar via Libc-alpha wrote:

> > To clarify, does POSIX _guarantee_ that all of those headers define this
> > type?  (I admit I'm too lazy to search through the POSIX standard for an
> > answer to this).
> 
> Yes, POSIX does guarantee that all those headers define the type.

For a lot of cases where a header contains a function using a type in its 
prototype, current POSIX requires that type to be defined in the header, 
but older POSIX permitted it (by virtue of the *_t reservation) but did 
not require it unless XSI extensions were enabled.

The preferred glibc practice in such cases where older POSIX permitted the 
definition and included functions using the type is not to make the 
definition of the type in the header conditional on the POSIX version / 
XSI extensions, but to enable the definition for all standards that 
include the relevant function.  (This simplifies the headers, and also 
simplifies the conform/ tests because they then don't need to handle 
testing for a declaration of a function without being able to write its 
type in the most straightforward way.)

The headers still need to include feature test macro conditionals and 
special handling where a header is required by some standard to declare a 
function without defining the corresponding type name.  (For example, ISO 
C does not permit <stdio.h> to define va_list, so the header has to use an 
implementation-namespace name for that type when declaring vprintf.)

-- 
Joseph S. Myers
joseph@codesourcery.com
