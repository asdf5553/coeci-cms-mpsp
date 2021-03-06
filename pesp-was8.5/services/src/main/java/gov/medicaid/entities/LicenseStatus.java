/*
 * Copyright 2012-2013 TopCoder, Inc.
 *
 * This code was developed under U.S. government contract NNH10CD71C. 
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *     http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package gov.medicaid.entities;

import java.util.Date;

/**
 * Represents a license status.
 *
 * @author argolite, TCSASSEMBLER
 * @version 1.0
 */
public class LicenseStatus extends LookupEntity {

    /**
     * License status date.
     */
    private Date date;

    /**
     * Default empty constructor.
     */
    public LicenseStatus() {
    }

    /**
     * Gets the value of the field <code>date</code>.
     * @return the date
     */
    public Date getDate() {
        return date;
    }

    /**
     * Sets the value of the field <code>date</code>.
     * @param date the date to set
     */
    public void setDate(Date date) {
        this.date = date;
    }
}
