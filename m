Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E92241AFEB1
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 00:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725947AbgDSWiW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 18:38:22 -0400
Received: from hypra.fr ([62.210.38.35]:49844 "EHLO hypra.fr"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725905AbgDSWiW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 19 Apr 2020 18:38:22 -0400
Received: from [192.168.0.21] (unknown [82.66.86.116])
        by hypra.fr (Postfix) with ESMTPSA id E5FC658379F;
        Mon, 20 Apr 2020 00:38:20 +0200 (CEST)
Subject: Re: Please remove the memusage.1 manpage
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <5689907b-69a6-090a-dfaf-d0e28babf6aa@debian.org>
 <875zdvz4ox.fsf@mid.deneb.enyo.de>
From:   Jean-Philippe MENGUAL <jpmengual@debian.org>
Message-ID: <42bf15d1-78e4-fbee-8888-b1b342e4209f@debian.org>
Date:   Mon, 20 Apr 2020 00:38:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101
 Thunderbird/77.0a1
MIME-Version: 1.0
In-Reply-To: <875zdvz4ox.fsf@mid.deneb.enyo.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ok I did not know. Thanks. I report to Debian then

Regards


Jean-Philippe MENGUAL
Debian Developer non uploading
Community team member
Accessibility team member
debian-l10n-french team member
President of Debian France non-profit organization

Le 19/04/2020 à 20:54, Florian Weimer a écrit :
> * Jean-Philippe MENGUAL:
> 
>> This manpage seems not to match to any command now on Linux, at least in
>> Debian but not only. Should not the corresponding manpage be removed
>> then. Keeping it makes us translate while useless now.
> 
> Fedora packages it in glibc-utils:
> 
> $ rpm -ql glibc-utils | grep memus
> /usr/bin/memusage
> /usr/bin/memusagestat
> 
> So perhaps this request should be directed at Debian's manpages
> package?
> 
