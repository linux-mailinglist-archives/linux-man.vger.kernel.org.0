Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C929B7D5DE3
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 00:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234973AbjJXWDI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 18:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234970AbjJXWDH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 18:03:07 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B20C610C6
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 15:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1698184984; x=1729720984;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7WqA45cuV95lFyi79HP3iUI2Lnuzlq5zdS1cYxZ7XO4=;
  b=zIv+AlQs//C/bpY9n0QtnnOFRqy4i1/+sV0xn9dxNh0P/SXE7jhDpWT+
   wNaLU5+5V9y4L5XPrM04tcBCMN5ZvffNv0k5xyq+sGFdHzY9/MIfeSbyo
   TgPOOFtVlc0AukwoAirybAwZCg/KOrXVLRBa1VrCQ77pQ79WkqJ+9juS/
   cLeX4yuujtdDfRO9NxfRvFbGv9CQuZznptPdk4d/GSKIwj88PqLX4prbc
   4oTVMi861rhyL607hZp5TclQiuXFG+bzHNvwFt4ka3cdcH46w6HnN72Go
   Mk/mZ5CWHyCzOyoAsquY2n5bV+dC83abNo8tyZxR/hdvqjigI39vVbq15
   Q==;
X-CSE-ConnectionGUID: kCQEz298TO6IY0mcHPw1Wg==
X-CSE-MsgGUID: t0RcNUCRRPO4xoLgpnKN3g==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="11119363"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Oct 2023 15:03:04 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 24 Oct 2023 15:01:53 -0700
Received: from brunhilda.pdev.net (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 24 Oct 2023 15:01:53 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <alx@kernel.org>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v9 0/3] smartpqi man page updates
Date:   Tue, 24 Oct 2023 17:01:50 -0500
Message-ID: <20231024220153.36748-1-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.482.g2e8e77cbac
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

Changes since V8:

    smartpqi-update-host-attribute-descriptions
      I added an explanation for changing "logical drives" to "logical volumes".
      Alejandro Colomar <alx@kernel.org>
      Link: https://lore.kernel.org/linux-man/ZS3IKF9XHOuQaMMt@debian/

    smartpqi-add-device-attributes
      Changed the sysfs entry from a specific Host:Bus:Target:Lun to generic
      c : b : t : l
      Shortened some lines.
      Alejandro Colomar <alx@kernel.org>
      Link: https://lore.kernel.org/linux-man/ZS3MwU7MNF3p7yes@debian/

Changes since V7:

    smartpqi-update-host-attribute-descriptions
      I had removed some patch context, but did not update the patch
      description to reflect the updated patch.
      Alejandro Colomar <alx@kernel.org>
      Link: https://marc.info/?l=linux-man&m=169732291731554&w=2
    smartpqi: add device attributes
      Changed the sysfs path entry for each device attribute from ".I" to ".IR".
      Alejandro Colomar <alx@kernel.org>
      Link: https://marc.info/?l=linux-man&m=169732400031940&w=2

    Thanks Alejandro for your review and suggestions.

Changes since V6:
    patch "(smartpqi-add-module-parameter_ctrl_ready_timeout)" was
    applied.
    patch "(smartpqi-update_FILES_section)" was applied.
    Some minor updates requested by Alejandro Colomar <alx@kernel.org>
    Thanks Alejandro for your review and suggestions.

    The V7 updates include the following patches:

    smartpqi-update-host-attribute-descriptions
      Moved the sysfs entry removal description for "version"
    smartpqi-remove-sysfs-entry-for-version
      New patch for removal of sysfs entry for "version".
      Added HISTORY section.
      Alejandro Colomar <alx@kernel.org>
      Link: https://marc.info/?l=linux-man&m=169680471921234&w=2

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

Don Brace (3):
  smartpqi: update host attribute descriptions
  smartpqi: remove sysfs entry for version
  smartpqi: add device attributes

 man4/smartpqi.4 | 128 ++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 108 insertions(+), 20 deletions(-)

-- 
2.42.0.482.g2e8e77cbac

