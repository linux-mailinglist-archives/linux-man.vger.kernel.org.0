Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9A8B716073
	for <lists+linux-man@lfdr.de>; Tue, 30 May 2023 14:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232356AbjE3Msx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 May 2023 08:48:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232280AbjE3Msv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 May 2023 08:48:51 -0400
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FD039D
        for <linux-man@vger.kernel.org>; Tue, 30 May 2023 05:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1685450892; x=1716986892;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fOLNTasNmuayRpuYcUG/K5H8ItF0KzLCXGUPudKGO3Q=;
  b=RjX0t+XA1cYMqVcIsKLp+/+PcPr8rr8i0UqXX9z0qWWQA1hDwZBubu+F
   iyo7sE/uv1SuKTvSustdyw6MiCCARlYRf6BUjo2xTuGrkoc+H1s025NvD
   VeFQ5oA+VnvMtTT8SnF96pIdf+wx2+gIp1SdPVf6ZMsbrZILDji1YZodF
   eGnXfWA+UArNDUluVCSWJ1ZyA/luaOdT/QZ0SiqzHgGzp2apfhnxiQnf5
   B0aYglvObeLaSK1Nzk/goptHSOdXiXDnDf+ev6aTQw5oYSPJ0Vet3rIuV
   5wVjTUFUFWCUx5rYFZhHwl//uNCVCeZ6avZCxrFv8vnmiEygGIDlqZth5
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="357277603"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; 
   d="scan'208";a="357277603"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2023 05:47:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="776313342"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; 
   d="scan'208";a="776313342"
Received: from tassilo.jf.intel.com (HELO tassilo) ([10.54.38.190])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2023 05:47:53 -0700
Date:   Tue, 30 May 2023 05:47:52 -0700
From:   Andi Kleen <ak@linux.intel.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
Subject: Re: SPDX license review requests
Message-ID: <ZHXweLNKqHKoybXM@tassilo>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com>
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> 
> VERBATIM_ONE_PARA
> 	This license was first used in the Linux man-pages in version
> 	1.24 (year 1999) in several pages:
> 
> 		sendfile.2
> 			Pawel Krawczyk
> 		cmsg.3
> 			Andi Kleen <ak@muc.de>

I assume there's no need to change these.

> VERBATIM_TWO_PARA
> 	This license was first used in the Linux man-pages in version
> 	3.07 (year 2008) in a single page:
> 
> 		move_pages.2
> 			Added by Michael Kerrisk <mtk.manpages@gmail.com>,
> 			but Copyright (C) 2006 Silicon Graphics, Inc.
> 			                  Christoph Lameter
> 
> 	It was later reused in another page:
> 
> 		migrate_pages.2
> 			Copyright 2009 Intel Corporation
> .\"                Author: Andi Kleen
> .\" Based on the move_pages manpage which was
> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
> .\"                               Christoph Lameter
> 
> 	This license is the one considered non-free by Fedora, and which
> 	we need to drop.  Luckily it's only two pages, so they could be
> 	reasonably rewritten in a worst case.

Not sure I followed why it is non-free, but I'm ok with relicensing my portions
of this to VERBATIM_ONE_PARA.

But I suppose you would also need agreement from the other contributors.

-Andi
