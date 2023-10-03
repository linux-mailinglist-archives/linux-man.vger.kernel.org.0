Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 824797B720A
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 21:51:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240978AbjJCTv7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 15:51:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232078AbjJCTv6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 15:51:58 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADA19E
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 12:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1696362715; x=1727898715;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=0Gb1N+6OJHyroyMqUC9+aXnAJ2zKRVoQ2lIz0e/hJEA=;
  b=aSwh8sBv/PKJ2Vb4VxOimSjlWuByJm7txBYGDbQfYZLu6Q22w+BGsh2d
   oKruxmpbIfDqW5kaWUx7iHYpbmGw6Yoki1h6rjE1Ptu6oA8jBwvrX6MMa
   72r9E0xrSS6YHbCHHX/qSl87AMjcUjWA64Hn2fJfUHC6Iux2CxY/RxeZB
   7vdhjWsfs8T22adUhKc72m1TA6pQmwmYIysbuVvYuxRadXgLeYaaLR/oG
   SWs+a5/zK6RS9M69XtUE1kXrXUA3WbmE42Bl5BoAxxgtZk85A5GPeBb4R
   Y8xAMIAflAvBw2XSgMTv7gP9cnUmFF9CJ2VRdBP2xKYvax92gvlFGpI4F
   A==;
X-CSE-ConnectionGUID: meeTLBFeSJ2hm6xK2zVK2g==
X-CSE-MsgGUID: k8rEdSVZSlW+63VVnSY7VA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; 
   d="scan'208";a="7932339"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 03 Oct 2023 12:51:54 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 3 Oct 2023 12:51:48 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 3 Oct 2023 12:51:48 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v6 0/6] smartpqi man page updates
Date:   Tue, 3 Oct 2023 14:54:33 -0500
Message-ID: <20231003195439.253129-1-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.296.g493f462273
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These patches are based the man page content found in
git://git.kernel.org/pub/scm/docs/man-pages/man-pages.git

The Linux man page smartpqi.4 is out-of-date with the man page provided
by our out-of-box driver. This patch series brings the Linux man page up
to date.

The changes are:
smarpqi-update-copyright-and-email-addresses
    The copyright, email, and URLs have changed to Microchip.
smartpqi-update-module-parameter-descriptions
    We changed some descriptions of some of our module parameters.
    Clarifies what their default values are.
smartpqi-add-module-parameter_disable_managed_interrupts
    We added a new module parameter to allow users to disable how
    interrupts are managed allowing them to change affinity.
smartpqi-add-module-parameter_ctrl_ready_timeout
    We added a new module parameter to allow users to change how
    long the driver waits for the controller becomes ready. The
    default is 180 seconds and can be changed from 30-1800 seconds.
    The longer wait times are useful for large configurations.
smartpqi-update_FILES_section
    Minor change to the FILES section. The word "Logical" was changed to
    "Disk" since HBA disks are also supported.
smartpqi-update-host-attribute-descriptions
    Updated the descriptions of existing host attributes accessed through
    sysfs.
smartpqi-update-device-attribute-descriptions
    Updated the descriptions of existing device attributes accessed through
    sysfs.
smartpqi-add-host-attributes
    We added some new host attributes:
       enable_stream_detection: For RAID5/6 sequential write operations, this
             can help increase IOPS. Reduces Read/Modify/Write operations.
             This is for AIO capable devices. (Volumes consisting of non-rotating
             media).
       enable_r5_writes: Send down RAID 5 write operations down the AIO path.
       enable_r6_writes: Send down RAID 6 write operations down the AIO path.
smartpqi-add-device-attributes
    We added some new device attributes:
       lunid - SCSI LUN ID
       unique_id - 16-byte ID that uniquely identifies the device within the controller.
       path_info - Host:Bus:Target:Lun (h:b:t:l), device type, Active/Inactive
       raid_bypass_cnt - Count of the number of request sent down the AIO path.
       sas_ncq_prio_enable - Enables SATA NCQ priority support.
smartpqi-add-sg-entry-to-see_also
    Simple addition of the sg(4) driver to the SEE ALSO section.

Changes since V5:
    smartpqi: add module parameter ctrl_ready_timeout
      Forgot to change the range of values for ctrl_ready_timeout.
      Changed 0 or 30,1800 to 0 or [30,1800]
      Alejandro Colomar <alx@kernel.org>
      Link: https://lore.kernel.org/linux-man/ZRtfS8DIxlqNN-XH@debian/
      Sorry about that. Thanks for your review.

Changes since V4:
    Added patch smartpqi-add-HISTORY-section
      Added HISTORY section to explain that the sysfs entry for 'version'
      was replaced by two new sysfs entries: driver_version, and firmware_version.
      Suggested-by: Alejandro Colomar <alx@kernel.org>
      Link: https://lore.kernel.org/linux-man/ZRtgG396-1Cj4gn2@debian/

    smartpqi: add module parameter ctrl_ready_timeout
      Minor update to parameter description due to suggestion by:
      Alejandro Colomar <alx@kernel.org>
      Link: https://lore.kernel.org/linux-man/ZRtfS8DIxlqNN-XH@debian/

Changes since V3:
    Updated content for the following pages due to reviews by:
    Alejandro Colomar <alx@kernel.org>

      smartpqi: add module parameter ctrl_ready_timeout
      Link: https://lore.kernel.org/linux-man/axwssorupkp6fv3b7zqgjyd243exvhlw7rle2ftyy43jxhm4yf@woxzbz4hm766/

      smartpqi: update FILES section
      Link: https://lore.kernel.org/linux-man/fwpvmbussvf2zzug5bsqhrd7mvwcvdllvna6a4ngke3hw6w5am@b4icgpgirck4/

      smartpqi: update host attribute descriptions
      Link: https://lore.kernel.org/linux-man/ss7k5ooeoi7y56j6otvdpwhgd5yltzk6nt5l6ujiiupxzpmrdx@zrcvhw364ejx/

      smartpqi: add host attributes
      Link: https://lore.kernel.org/linux-man/nbt3jt7busx6akj7ykaxs7df6vlbbxtvcdy4ckvlp7saol3djl@rb6ckz3lzzot/

      smartpqi: add device attributes
      Link: https://lore.kernel.org/linux-man/ytcsqleu53iwpn5gsjmmuoqz2cy5oegvvafwlwxn422bcn3a5e@ne3khvixxzuq/

    The other patches have already been applied and were removed from the
    remaining patch set after a rebase.

    Thanks for your attention and reviews for these patches.

Changes since V2:
    Resending due to bad e-mail address for maintainer.

Changes since V1:
    Broke up the large patch into multiple smaller patches due to review by:
    Alejandro Colomar <alx@kernel.org>
    Link: https://lore.kernel.org/all/096ed4d5-945f-5ac9-eba3-c9be5d32cfe8@kernel.org/

---

Don Brace (6):
  smartpqi: add module parameter ctrl_ready_timeout
  smartpqi: update FILES section
  smartpqi: update host attribute descriptions
  smartpqi: add host attributes
  smartpqi: add device attributes
  smartpqi: add HISTORY section

 man4/smartpqi.4 | 194 +++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 174 insertions(+), 20 deletions(-)

-- 
2.42.0.296.g493f462273

