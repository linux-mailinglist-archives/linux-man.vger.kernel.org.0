Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA1B727EE0D
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 17:57:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgI3P5x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 11:57:53 -0400
Received: from esa1.mentor.iphmx.com ([68.232.129.153]:16467 "EHLO
        esa1.mentor.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbgI3P5w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 11:57:52 -0400
X-Greylist: delayed 426 seconds by postgrey-1.27 at vger.kernel.org; Wed, 30 Sep 2020 11:57:52 EDT
IronPort-SDR: ucx1DgABL4XIa1WNSINt4SYP7TIHx3SpiUUIelpnxpKgWpyGZeF9o3x1HwCGKhrWNlpTjBkgME
 EMxs8F7HDc+YpAZvOcCGaokZzKZyL1WsVutXhTEXn9M3dnhXHYiGSqe+eYst9Gm3OspP1cjPGt
 tBCKQua6yUYINUVL0nh/5xduVdbx7lqac+C3cGucJDsIl/DRka7j5aaBN2Kah3z3wVBHq9PDDJ
 LFX3o5xgVA01B8KZGASggsndiP2qGmzevTvBJ9zUAb3bf5uZA18plHprxgt9Q582W2mFjcv6+V
 E7c=
X-IronPort-AV: E=Sophos;i="5.77,322,1596528000"; 
   d="scan'208";a="55685506"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa1.mentor.iphmx.com with ESMTP; 30 Sep 2020 07:50:46 -0800
IronPort-SDR: Zu7dNyjg89mmL3Dk3qOvCUuKRszIbJWNmplu4gMtzDyXdf9M2Gnc694HEsAQyhkscO8Y1RJhVV
 nt0871hpY00u9mYolIc3dG2luYSaOTSn4BtXh2PkxOpuV3Q3fpJZUpZiygV3uCqPCigM+aEtD1
 WJe0/3HDBgYPH2wPOroIjCihAVDhIALC/MSMhOpJENpTOGuWizVOXmLMg0rNiX5sT6aoD1qObm
 L2fcnT4gpLKPWQ3Gk3Zlqbt+I6wQZUggGbdsd6/dvaUdZ9TFbSYsFrJyatcm8Byqphmbw8Fxon
 jXg=
Date:   Wed, 30 Sep 2020 15:50:41 +0000
From:   Joseph Myers <joseph@codesourcery.com>
X-X-Sender: jsm28@digraph.polyomino.org.uk
To:     Paul Eggert <eggert@cs.ucla.edu>
CC:     Florian Weimer <fweimer@redhat.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        <linux-man@vger.kernel.org>, <mtk.manpages@gmail.com>
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
In-Reply-To: <ad2a293d-1e26-8279-7521-4093f4200a59@cs.ucla.edu>
Message-ID: <alpine.DEB.2.21.2009301546540.5720@digraph.polyomino.org.uk>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com> <20200918112755.21428-2-colomar.6.4.3@gmail.com> <87tuvv5f24.fsf@oldenburg2.str.redhat.com> <ad2a293d-1e26-8279-7521-4093f4200a59@cs.ucla.edu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-08.mgc.mentorg.com (139.181.222.8) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 18 Sep 2020, Paul Eggert wrote:

> On 9/18/20 7:34 AM, Florian Weimer via Libc-alpha wrote:
> > the length modifier for printf and scanf is z, commently used as
> > %zu or %zx (%zd is for ssize_t).
> 
> While %zd works for ssize_t in glibc, POSIX doesn't guarantee that it'll work,
> as ssize_t might not have the same width as size_t. (If memory serves this
> goes back to the bad old days when size_t was 64 bits and ssize_t 32 bits on
> some platforms.) So if we document %zd we should say it's a GNU extension to
> POSIX, or something like that.

%zd is for the signed type corresponding to size_t; that's in ISO C.  The 
GNU extension would be a guarantee that ssize_t is the signed type 
corresponding to size_t (if we do guarantee that).

-- 
Joseph S. Myers
joseph@codesourcery.com
