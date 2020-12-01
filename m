Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6D0A2CA90B
	for <lists+linux-man@lfdr.de>; Tue,  1 Dec 2020 17:56:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404096AbgLAQ4E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Dec 2020 11:56:04 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:39338 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2389102AbgLAQ4B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Dec 2020 11:56:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1606841675;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=NwanTEN/hmPAe2sJLS/eqUBj8LvT15GIF6AmdOzB/hQ=;
        b=F5mAoFeWeeJSAh1gnTeVw1lmri06sN4ZfKR2ab5FiY8OGq+MjxJyXw4adOt7JydChoYJ2y
        cn4YFzTBu6tIICOgF35MDgNxPLiNP3ElGv2W18UMN+FcuQ/OyTRQkuDFK4En7XCV6WBWFq
        3R7joBRrRkfZMWTUW2bsKdqPMRtPS54=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-WUkMC5nKOzGqhtjG1LndVg-1; Tue, 01 Dec 2020 11:54:32 -0500
X-MC-Unique: WUkMC5nKOzGqhtjG1LndVg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98FBE84A5E0;
        Tue,  1 Dec 2020 16:54:30 +0000 (UTC)
Received: from liberator.sandeen.net (ovpn04.gateway.prod.ext.phx2.redhat.com [10.5.9.4])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 8E72210013C1;
        Tue,  1 Dec 2020 16:54:26 +0000 (UTC)
To:     torvalds@linux-foundation.org,
        Miklos Szeredi <mszeredi@redhat.com>,
        Ira Weiny <ira.weiny@intel.com>,
        David Howells <dhowells@redhat.com>
Cc:     linux-fsdevel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, xfs <linux-xfs@vger.kernel.org>,
        linux-ext4@vger.kernel.org, Xiaoli Feng <xifeng@redhat.com>,
        Eric Sandeen <sandeen@redhat.com>
From:   Eric Sandeen <sandeen@redhat.com>
Subject: [PATCH 0/2] statx: Fix DAX attribute collision and handling
Message-ID: <e388f379-cd11-a5d2-db82-aa1aa518a582@redhat.com>
Date:   Tue, 1 Dec 2020 10:54:26 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There are two issues with the statx DAX attribute in the kernel today:

1) Its value clashes with STATX_ATTR_MOUNT_ROOT as dhowells previously reported
2) It is not set in the statx attributes_mask as reported by xifeng

This short series changes the STATX_ATTR_DAX value, and moves the reporting
from the vfs into the dax-capable filesystems so that they can set the
statx atrributes_mask appropriately.

Thanks,
-Eric

