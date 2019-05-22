Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69E4325ECF
	for <lists+linux-man@lfdr.de>; Wed, 22 May 2019 09:49:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728653AbfEVHtO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 May 2019 03:49:14 -0400
Received: from mx1.redhat.com ([209.132.183.28]:46588 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726358AbfEVHtO (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 22 May 2019 03:49:14 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 42EEB3082145;
        Wed, 22 May 2019 07:49:14 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-117-43.ams2.redhat.com [10.36.117.43])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 03F9266D2C;
        Wed, 22 May 2019 07:49:12 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     James Woodward <19246@msd.k12.wi.us>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Typo in calcurse man page
References: <CAKuDSeamZCAESnFnyUg2zw2Kyp8w=UUoY6jqg1hP+Nzpg__YKQ@mail.gmail.com>
Date:   Wed, 22 May 2019 09:49:09 +0200
In-Reply-To: <CAKuDSeamZCAESnFnyUg2zw2Kyp8w=UUoY6jqg1hP+Nzpg__YKQ@mail.gmail.com>
        (JAMES WOODWARD's message of "Wed, 22 May 2019 00:26:34 -0500")
Message-ID: <87r28r53pm.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Wed, 22 May 2019 07:49:14 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* JAMES WOODWARD:

> Under the heading DESCRIPTION, there is the string of text: "The
> following two subsectiions". This should be "The following two
> subsections".

The calcurse manual page is maintained by the calcurse project.  I
submitted a change request on your behalf:

  <https://github.com/lfos/calcurse/pull/211>

Thanks,
Florian
