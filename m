Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 178F81AFD3D
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:00:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726513AbgDSTAd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:00:33 -0400
Received: from albireo.enyo.de ([37.24.231.21]:56656 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726124AbgDSTAd (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 19 Apr 2020 15:00:33 -0400
X-Greylist: delayed 335 seconds by postgrey-1.27 at vger.kernel.org; Sun, 19 Apr 2020 15:00:32 EDT
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1jQF5j-0006QB-22; Sun, 19 Apr 2020 18:54:55 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1jQF5j-0007cU-05; Sun, 19 Apr 2020 20:54:55 +0200
From:   Florian Weimer <fw@deneb.enyo.de>
To:     Jean-Philippe MENGUAL <jpmengual@debian.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Please remove the memusage.1 manpage
References: <5689907b-69a6-090a-dfaf-d0e28babf6aa@debian.org>
Date:   Sun, 19 Apr 2020 20:54:54 +0200
In-Reply-To: <5689907b-69a6-090a-dfaf-d0e28babf6aa@debian.org> (Jean-Philippe
        MENGUAL's message of "Sun, 19 Apr 2020 17:24:37 +0200")
Message-ID: <875zdvz4ox.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Jean-Philippe MENGUAL:

> This manpage seems not to match to any command now on Linux, at least in 
> Debian but not only. Should not the corresponding manpage be removed 
> then. Keeping it makes us translate while useless now.

Fedora packages it in glibc-utils:

$ rpm -ql glibc-utils | grep memus
/usr/bin/memusage
/usr/bin/memusagestat

So perhaps this request should be directed at Debian's manpages
package?
