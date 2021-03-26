Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A9E134B31B
	for <lists+linux-man@lfdr.de>; Sat, 27 Mar 2021 00:46:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230294AbhCZXqV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Mar 2021 19:46:21 -0400
Received: from 75-101-100-43.dsl.static.fusionbroadband.com ([75.101.100.43]:57794
        "EHLO hop.toad.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbhCZXpv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Mar 2021 19:45:51 -0400
Received: from hop.toad.com (localhost [127.0.0.1])
        by hop.toad.com (8.12.9/8.12.9) with ESMTP id 12QNjcRl023509;
        Fri, 26 Mar 2021 16:45:38 -0700
To:     Seth David Schoen <schoen@loyalty.org>
cc:     Florian Weimer <fw@deneb.enyo.de>, linux-man@vger.kernel.org,
        gnu@toad.com
Subject: Re: [PATCH 1/1] ip.7: Add "special and reserved addresses" section 
In-reply-to: <20210326225305.GB10062@frotz.zork.net> 
References: <20210320002041.GZ2289@frotz.zork.net> <87ft0pzjtk.fsf@mid.deneb.enyo.de> <20210322175815.GX10062@frotz.zork.net> <87blb9q7ok.fsf@mid.deneb.enyo.de> <20210324191858.GP10062@frotz.zork.net> <20210326225305.GB10062@frotz.zork.net>
Comments: In-reply-to Seth David Schoen <schoen@loyalty.org>
   message dated "Fri, 26 Mar 2021 15:53:05 -0700."
Date:   Fri, 26 Mar 2021 16:45:38 -0700
Message-ID: <23508.1616802338@hop.toad.com>
From:   John Gilmore <gnu@toad.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > > Are there network devices that are neither point-to-point, nor do they
> > > have broadcast support?

It seems to me that cellular radio systems are neither point-to-point,
nor do they support broadcast.  And they keep moving further and further
toward being IP-based (e.g. phone calls on your LTE phone use SIP over
UDP over IP over cellular!).  But given the proprietary nature of most
cellphone radio chips and their firmware, it's possible that Linux has
never built a fully capable network interface to talk to them.  I don't
think we should attempt to rule it out, though.

	John
	
