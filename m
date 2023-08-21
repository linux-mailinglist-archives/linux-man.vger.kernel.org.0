Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB7697831EF
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 22:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbjHUTzY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 15:55:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbjHUTzX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 15:55:23 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FF0E116
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 12:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692647721; x=1724183721;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fxU7a1V2LTvoAGKgLa7GQSGzBvZiIiEqaukJD4Yo8Qs=;
  b=0g0mQPbKkij219bOlbxrtXxSmhGXO31T1+xPDioBe/S4uqc88uGZJnOC
   rjs8tOFl5qVQGFSnTT/tyE6EHTfcLascria2fijSfUjLn4I3mJyA1TVJ+
   j5mkBDeMIh0TIqjcZ6LWUj4M2UJcUacg/wOyXxEvWAxbXSWHG5H2AjeOK
   OdUVnTD60lml5vFTbHcBjnL6uR4Vz5O8xuhVkA03M/whU8vX9b8ZbTZQR
   YbYZQMOjuntLgN6BGL5CGdgTs0QazO/WBJWjDRCaPjs/JMH4dyzh0OBPn
   nfaaE+tTS80h7C39nupsfnKhE2eO/eS1pQoklxgF27ty14hcgW7FDfPFp
   w==;
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
   d="scan'208";a="527982"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Aug 2023 12:55:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 21 Aug 2023 12:55:21 -0700
Received: from brunhilda.pdev.net (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 21 Aug 2023 12:55:20 -0700
From:   Don Brace <don.brace@microchip.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH v2 00/10] smartpqi man page updates
Date:   Mon, 21 Aug 2023 14:57:16 -0500
Message-ID: <20230821195726.446748-1-don.brace@microchip.com>
X-Mailer: git-send-email 2.42.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
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

Changes since V1:
    Broke up the large patch into multiple smaller patches due to review by:
    Alejandro Colomar <alx@kernel.org>
    Link: https://lore.kernel.org/all/096ed4d5-945f-5ac9-eba3-c9be5d32cfe8@kernel.org/

---

Don Brace (10):
  smarpqi: update copyright and email addresses
  smartpqi: update module parameter descriptions
  smartpqi: add-module parameter disable_managed_interrupts
  smartpqi: add module parameter ctrl_ready_timeout
  smartpqi: update FILES section
  smartpqi: update host attribute descriptions
  smartpqi: update device attribute descriptions
  smartpqi: add host attributes
  smartpqi: add device attributes
  smartpqi: add sg entry to see_also

 man4/smartpqi.4 | 229 +++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 186 insertions(+), 43 deletions(-)

-- 
2.42.0.rc2

